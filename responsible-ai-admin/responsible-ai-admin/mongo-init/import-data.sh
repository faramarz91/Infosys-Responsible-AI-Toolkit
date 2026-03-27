#!/bin/sh
set -e

DB_NAME="${MONGO_INITDB_DATABASE:-RAI_Admin_DB}"

for file in /seed/*.json; do
  [ -f "$file" ] || continue

  collection="$(basename "$file" .json)"
  echo "Importing $file into $DB_NAME.$collection"

  mongoimport \
    --db "$DB_NAME" \
    --collection "$collection" \
    --file "$file" \
    --jsonArray \
    --drop
done

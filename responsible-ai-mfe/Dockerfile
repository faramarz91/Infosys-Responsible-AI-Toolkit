FROM node:20.11.1-bookworm-slim

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 30055

ENTRYPOINT ["npm", "start"]

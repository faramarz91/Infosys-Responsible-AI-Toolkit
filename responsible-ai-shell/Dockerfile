FROM node:20.11.1-bookworm-slim

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

RUN useradd --create-home myuser && chown -R myuser:myuser /app

EXPOSE 30010

USER myuser

ENTRYPOINT ["npm", "start"]

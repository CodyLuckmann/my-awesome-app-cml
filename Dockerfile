FROM node:lts-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . ./

ENV APP_PORT 8080
EXPOSE 8080

CMD ["node", "app.js"]
FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . . 

ENV APP_PORT 8080

EXPOSE 80

CMD ["node", "app.js"]
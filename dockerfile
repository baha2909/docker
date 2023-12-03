FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV IP_ADDRESS=0.0.0.0
ENV PORT=3000

EXPOSE $PORT

CMD [ "node", "server.js" ]
FROM node:alpine

MAINTAINER Jose Alvaro "jose@d3.do"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
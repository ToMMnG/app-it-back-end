# FROM node:12.18.2-alpine
FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# ENV NODE_ENV development

COPY ./package*.json ./

RUN npm install

COPY . .

EXPOSE 3000
CMD ["node", "index.js"]


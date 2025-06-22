FROM node:22-alpine

LABEL maintainer="apooorva01@gmail.com"

ENV NODE_ENV=production

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install 

COPY . ./

EXPOSE 4000

CMD [ "npm", "start" ]


# syntax=docker/dockerfile:1
# ARG NODE_VERSION=current-alpine3.21


FROM node:alpine3.21 AS base
LABEL maintainer="apooorva01@gmail.com"
WORKDIR /usr/src/app
EXPOSE 5000

FROM base AS dev
COPY package.json package-lock.json ./
RUN npm ci --include=dev
COPY . .
USER node
CMD [ "npm", "run", "dev" ]

FROM base AS prod
COPY package.json package-lock.json ./
 RUN npm ci --omit=dev
COPY . .
USER node
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:5000/api/v1/ || exit 1


CMD [ "node", "src/server.js" ]


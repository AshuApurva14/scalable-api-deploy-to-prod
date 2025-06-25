# syntax=docker/dockerfile:1
ARG NODE_VERSION=20.11.0
FROM node:${NODE_VERSION}-alpine

LABEL maintainer="apooorva01@gmail.com"

ENV NODE_ENV=development

WORKDIR /usr/src/app

# Create and use a non-root user
RUN apk add --no-cache curl && \
    addgroup -S appgroup && \
    adduser -S appuser -G appgroup

COPY package.json package-lock.json ./

RUN npm install pm2@6.0.8 -g && \
    npm ci 
  
COPY . .

USER appuser

EXPOSE 4000

HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:4000/health || exit 1


CMD [ "node", "src/server.js" ]
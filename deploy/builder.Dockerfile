FROM node:16-alpine AS builer

USER root

WORKDIR /usr/src/app

ENV CI=true

COPY . .

RUN yarn install --no-progress --frozen-lockfile 


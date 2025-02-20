FROM node:20-alpine3.17 as base

USER root

FROM base as development
RUN mkdir -p /home/node/app_dev
WORKDIR /home/node/app_dev

COPY package.json .
RUN npm install

COPY --chown=node:node . .

RUN chown -R node:node /home/node/app_dev

USER node

RUN npx prisma generate

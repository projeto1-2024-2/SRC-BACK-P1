FROM node:20-slim

USER root

RUN apt-get update && \
    apt-get install -y curl ca-certificates gnupg && \
    echo "deb http://security.debian.org/debian-security bullseye-security main" > /etc/apt/sources.list.d/bullseye-security.list && \
    apt-get update && \
    apt-get install -y libssl1.1 openssl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/node/app_dev
RUN mkdir -p /home/node/app_dev && chown -R node:node /home/node

USER node

COPY --chown=node:node package*.json ./

RUN npm install

COPY --chown=node:node . .

RUN npx prisma generate

CMD ["npm", "run", "start:dev"]

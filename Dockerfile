FROM node:20-slim

USER root

RUN apt-get update && \
    apt-get install -y curl ca-certificates gnupg && \
    echo "deb http://security.debian.org/debian-security bullseye-security main" > /etc/apt/sources.list.d/bullseye-security.list && \
    apt-get update && \
    apt-get install -y libssl1.1 openssl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/node/app_dev

COPY package*.json ./
RUN npm install

COPY . .

RUN chown -R node:node /home/node/app_dev

USER node

RUN npx prisma generate

# ENTRYPOINT
CMD ["npm", "run", "start:dev"]

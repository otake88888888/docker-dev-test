FROM node:lts

VOLUME /src
WORKDIR /app

COPY /src .

RUN npm -g install ioredis
ENV NODE_PATH /usr/local/lib/node_modules

ENTRYPOINT ["node", "app.js"]
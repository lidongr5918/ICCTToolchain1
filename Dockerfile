FROM node:lts-slim

ARG APP_DIR=/usr/src/app

WORKDIR ${APP_DIR}

ADD . ./

RUN npm install

EXPOSE 3000

RUN npm run build
USER node
CMD [ "npm", "run", "start" ]
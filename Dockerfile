FROM node:lts-alpine

ARG APP_DIR=/usr/src/app

WORKDIR ${APP_DIR}

ADD . ./

EXPOSE 3000

CMD [ "npm", "run", "start" ]
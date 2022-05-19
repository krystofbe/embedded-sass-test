FROM node:16.15.0-alpine as client-builder

WORKDIR /app
COPY ./package.json /app
COPY ./yarn.lock /app
RUN yarn install
COPY . /app
RUN yarn build
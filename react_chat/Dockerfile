FROM node:8

COPY . code/
WORKDIR code

RUN yarn install

EXPOSE 3000
CMD [ "yarn", "start" ]

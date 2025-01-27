FROM node:8

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

RUN npm run heroku-postbuild

EXPOSE 3000
CMD [ "npm", "start" ]
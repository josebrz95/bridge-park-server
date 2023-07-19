FROM node:18-alpine
WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 1337

CMD ["yarn", "develop"]
EXPOSE 1337
CMD ["yarn", "run", "develop"]

FROM node:16

WORKDIR /usr/src/app

COPY ./example-frontend .

RUN npm ci

RUN npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
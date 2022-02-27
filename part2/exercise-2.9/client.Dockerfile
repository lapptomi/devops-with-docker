FROM node:16

WORKDIR /usr/src/app

COPY ./example-frontend .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm ci

RUN npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
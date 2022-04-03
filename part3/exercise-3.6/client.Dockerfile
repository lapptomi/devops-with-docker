FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

COPY ./example-frontend .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

EXPOSE 5000

RUN npm ci && npm run build


FROM nginx:1.19-alpine

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html
FROM golang:1.17-alpine as build-stage

WORKDIR /usr/src/app

COPY ./example-backend .

RUN go build


FROM scratch

COPY --from=build-stage /lib ./lib

COPY --from=build-stage /usr/src/app/server ./server

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["/server"]

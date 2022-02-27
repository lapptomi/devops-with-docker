FROM golang:1.17

WORKDIR /usr/src/app

COPY ./example-backend .

ENV REQUEST_ORIGIN=http://client:5000

EXPOSE 8080

RUN go build

CMD ["./server"]
FROM golang:1.17-alpine

WORKDIR /usr/src/app

COPY ./example-backend .

ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE 8080

RUN go build

CMD ["./server"]
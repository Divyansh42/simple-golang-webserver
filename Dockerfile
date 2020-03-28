FROM golang:1.12-alpine AS builder

RUN mkdir -p /go/src /go/bin

WORKDIR /go/src/simple-golang-webserver

COPY . .

RUN go build -o /go/bin/simple-golang-webserver .

FROM alpine:3.9

RUN apk add ca-certificates

COPY --from=builder /go/bin/simple-golang-webserver .

CMD ["./simple-golang-webserver"]



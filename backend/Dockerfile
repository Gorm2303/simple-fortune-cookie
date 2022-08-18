FROM golang:1.19.0-alpine3.16 as builder

WORKDIR /

RUN mkdir /build/

COPY go.mod /build/
COPY go.sum /build/

COPY ./*.go /build/*

WORKDIR /build/

RUN go build .


FROM alpine:3.16
COPY --from=builder /build/backend .

ENTRYPOINT [ "./backend" ]

FROM golang:1.19-alpine as builder

WORKDIR /

RUN mkdir /build/

COPY ./*.go /build/

COPY go.mod /build/
COPY go.sum /build/

WORKDIR /build/

RUN go build .


FROM alpine:3.16
COPY --from=builder /build/backend .

ENTRYPOINT [ "./backend" ]

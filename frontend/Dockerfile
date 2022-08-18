FROM golang:1.19-alpine as builder

WORKDIR /

RUN mkdir /build/

COPY go.mod /build/

COPY ./*.go /build/

WORKDIR /build/

RUN go build .


FROM alpine:3.16
COPY --from=builder /build/frontend .

COPY static ./static
COPY templates ./templates

ENTRYPOINT [ "./frontend" ]

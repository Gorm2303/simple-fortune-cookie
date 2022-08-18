FROM golang:1.19-alpine as builder

RUN mkdir /build/

COPY ./*.go /build/

COPY go.mod /build/

WORKDIR /build/

RUN go build .

CMD [ "go", "run", "." ]


FROM alpine:3.16
COPY --from=builder /build/frontend .

COPY static ./static
COPY templates ./templates

ENTRYPOINT [ "./frontend" ]

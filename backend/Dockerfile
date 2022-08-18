FROM golang:1.19-alpine as builder

RUN mkdir /build/

ADD *.go /build/

ADD go.mod /build/
ADD go.sum /build/

WORKDIR /build/

RUN go build .

CMD [ "go", "run", "." ]


FROM alpine:3.16
COPY --from=builder /build/backend .

ENTRYPOINT [ "./backend" ]
FROM golang:1.19.0-alpine3.16 as builder

RUN mkdir /build/

ADD . /build/

WORKDIR /build/

RUN go build .

CMD [ "/build/frontend" ]

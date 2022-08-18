FROM golang:1.19.0-alpine3.16 as builder

RUN mkdir /build/

ADD . /build/

WORKDIR /build/

RUN go install github.com/gomodule/redigo v1.8.9 \
&& go install gopkg.in/yaml.v2 v2.2.2 \
&& go build .

CMD [ "/build/frontend" ]

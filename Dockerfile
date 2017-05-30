FROM alpine:3.6

MAINTAINER jsongo <jsongo@qq.com>

ENV PROTOBUF_TAG v3.3.1

ADD . /src
WORKDIR /src

RUN ./build.sh

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin
# RUN go get github.com/micro/protobuf/protoc-gen-go


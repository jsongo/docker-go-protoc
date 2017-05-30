FROM alpine:3.6

MAINTAINER jsongo <jsongo@qq.com>

RUN apk add --update go
RUN apk add --update git

RUN mkdir -p /go/src

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN apk add --update libstdc++
RUN go get github.com/micro/protobuf/proto
# RUN go get github.com/micro/protobuf/protoc-gen-go

RUN apk del git

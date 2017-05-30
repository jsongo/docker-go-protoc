
PACKAGES="git build-base autoconf automake libtool libstdc++"

apk update
apk add --update $PACKAGES

git clone https://github.com/google/protobuf -b $PROTOBUF_TAG --depth 1

cd ./protobuf

./autogen.sh && \
  ./configure --prefix=/usr && \
  make -j 3 && \
  make check && \
  make install

cd ..
rm -rf ./protobuf

apk add --update go
mkdir -p /go/src
go get github.com/micro/protobuf/proto

apk del $PACKAGES
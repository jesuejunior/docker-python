FROM alpine:3.3
MAINTAINER Jesue Junior <jesuesousa@gmail.com>

RUN apk add --no-cache --virtual=build-dependencies python3 python3-dev make g++ gcc linux-headers musl musl-dev libxml2 \
    libxml2-dev libxslt libxslt-dev py-mysqldb libpq postgresql-dev wget ca-certificates && \
    wget "https://bootstrap.pypa.io/get-pip.py" -O /dev/stdout | python3 && \
    apk del build-dependencies
  

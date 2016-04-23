FROM alpine:3.3
MAINTAINER Jesue Junior <jesuesousa@gmail.com>

RUN apk add --no-cache python python-dev gcc linux-headers musl musl-dev libxml2 \
    libxml2-dev libxslt libxslt-dev py-mysqldb libpq postgresql-dev && \
    apk add --no-cache --virtual=build-dependencies wget ca-certificates && \
    wget "https://bootstrap.pypa.io/get-pip.py" -O /dev/stdout | python && \
    apk del build-dependencies
  

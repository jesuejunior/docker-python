FROM python:3.6-alpine
MAINTAINER Jesue Junior <jesuesousa@gmail.com>

RUN apk add --no-cache --virtual=build-dependencies python3-dev g++ linux-headers musl musl-dev libxml2 \
    libxml2-dev libxslt libxslt-dev py-mysqldb libpq postgresql-dev && \
    apk del build-dependencies
  

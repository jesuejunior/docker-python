FROM python:3.9-buster

USER root

RUN set -ex \
    && buildDeps="build-essential bzip2 ca-certificates locales libsm6 libxext-dev git python3-dev ffmpeg" \
    && apt-get update \
    && apt-get install -yq $buildDeps --no-install-recommends \
    && pip3 install poetry==1.1.4 pipenv==2020.11.15 jupyterlab==3.0.7 jupytext \


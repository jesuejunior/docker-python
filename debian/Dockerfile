FROM python:3.9-buster

USER root

RUN set -ex \
    && buildDeps="build-essential bzip2 ca-certificates locales fonts-liberation libsm6 libxext-dev git python3-dev ffmpeg" \
    && apt-get update \
    && apt-get install -yq $buildDeps --no-install-recommends \
    && pip3 install poetry==1.1.4 pipenv==2020.11.15 jupyterlab==3.0.7 jupytext widgetsnbextension bokeh ipywidgets \
    matplotlib plotly \
    && jupyter nbextension enable --py widgetsnbextension --sys-prefix \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && find /usr/local -depth \
        \( \
            \( -type d -a \( -name test -o -name tests \) \) \
            -o \
            \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
            \) -exec rm -rf '{}' +

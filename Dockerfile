FROM python:3.5-slim

LABEL version="1.0"
LABEL description="Base image with python3.5 and scrappy"

MAINTAINER "VanyaDNDZ"

RUN apt-get update && apt-get install -qq -y \
  build-essential libpq-dev libffi-dev --no-install-recommends

RUN mkdir app
WORKDIR /app

RUN set -x \
	&& pip3 install scrapy
FROM bentruyman/alpine:3.2
MAINTAINER Ben Truyman <ben@truyman.com>

ENV BUILDBOT_VERSION 0.8.12

RUN apk --update add gcc git musl-dev py-pip python-dev \
 && rm -rf /var/cache/apk/*

RUN pip install --upgrade pip

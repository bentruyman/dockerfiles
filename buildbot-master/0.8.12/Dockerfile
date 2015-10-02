FROM bentruyman/buildbot-base:0.8.12
MAINTAINER Ben Truyman <ben@truyman.com>

RUN pip install \
  buildbot==$BUILDBOT_VERSION \
  sqlalchemy==0.7.10

RUN buildbot create-master master

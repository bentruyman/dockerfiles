FROM bentruyman/buildbot-base:0.8.12
MAINTAINER Ben Truyman <ben@truyman.com>

RUN pip install \
  buildbot==$BUILDBOT_VERSION \
  sqlalchemy==0.7.10

RUN buildbot create-master master
RUN mkdir -p /data/buildbot/master \
 && chown -R core:core /data/buildbot/master

RUN buildbot create-master /data/buildbot/master

WORKDIR /data/buildbot/master
VOLUME /data/buildbot/master
USER core

CMD ["twistd", "--nodaemon", "--no_save", "-y", "buildbot.tac"]

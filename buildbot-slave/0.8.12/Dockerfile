FROM bentruyman/buildbot-base:0.8.12
MAINTAINER Ben Truyman <ben@truyman.com>

RUN pip install buildbot_slave==$BUILDBOT_VERSION

RUN buildslave create-slave slave localhost:9989 example-slave pass

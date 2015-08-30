FROM alpine:3.2
MAINTAINER Ben Truyman <ben@truyman.com>

RUN adduser -D -u 1000 core
RUN mkdir -p /data
RUN mkdir -p /config/init

COPY docker-entrypoint.sh /
COPY config /config

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/sh"]

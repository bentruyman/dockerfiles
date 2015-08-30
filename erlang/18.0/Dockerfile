FROM bentruyman/alpine:3.2
MAINTAINER Ben Truyman <ben@truyman.com>

RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN apk --update add erlang \
 && rm -rf /var/cache/apk/*

CMD ["erl"]

FROM bentruyman/alpine:3.2
MAINTAINER Ben Truyman <ben@truyman.com>

RUN apk --update add nginx \
 && rm -rf /var/cache/apk/*

CMD ["nginx", "-g", "daemon off;"]

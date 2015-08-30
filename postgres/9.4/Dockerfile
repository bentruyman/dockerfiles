FROM bentruyman/alpine:3.2
MAINTAINER Ben Truyman <ben@truyman.com>

ENV LANG en_US.utf8
ENV PGDATA /var/lib/postgresql/data

RUN apk --update add curl \
 && curl -o /usr/local/bin/gosu -sSL "https://github.com/tianon/gosu/releases/download/1.2/gosu-amd64" \
 && chmod +x /usr/local/bin/gosu \
 && apk del curl \
 && rm -rf /var/cache/apk/*

RUN apk --update add postgresql \
 && rm -rf /var/cache/apk/*

COPY config /config

VOLUME /var/lib/postgresql/data

CMD ["gosu", "postgres", "postgres"]
EXPOSE 5432

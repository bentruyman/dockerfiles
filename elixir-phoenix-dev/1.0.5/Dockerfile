FROM bentruyman/elixir-dev:1.0.5
MAINTAINER Ben Truyman <ben@truyman.com>

RUN apk --update add nodejs postgresql-client \
 && rm -rf /var/cache/apk/*

RUN mix local.hex

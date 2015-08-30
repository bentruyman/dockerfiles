FROM bentruyman/elixir:1.0.5
MAINTAINER Ben Truyman <ben@truyman.com>

RUN apk --update add erlang-asn1 erlang-dev erlang-erl-interface erlang-eunit \
    erlang-inets erlang-public-key erlang-sasl erlang-ssl git wget \
 && rm -rf /var/cache/apk/*

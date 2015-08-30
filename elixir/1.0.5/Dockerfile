FROM bentruyman/erlang:18.0
MAINTAINER Ben Truyman <ben@truyman.com>

ENV ELIXIR_VERSION 1.0.5

RUN apk --update add ca-certificates erlang-crypto erlang-syntax-tools wget && \
    wget https://github.com/elixir-lang/elixir/releases/download/v${ELIXIR_VERSION}/Precompiled.zip && \
    mkdir -p /opt/elixir-${ELIXIR_VERSION}/ && \
    unzip Precompiled.zip -d /opt/elixir-${ELIXIR_VERSION}/ && \
    rm Precompiled.zip && \
    apk del ca-certificates wget && \
    rm -rf /etc/ssl && \
    rm -rf /var/cache/apk/*

ENV PATH $PATH:/opt/elixir-${ELIXIR_VERSION}/bin

CMD ["elixir"]

# vim:set fenc=utf-8 ts=2 sw=2 sts=2 et ft=dockerfile:
ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

LABEL "org.opencontainers.image.authors"="Andrius Kairiukstis <k@andrius.mobi>"
LABEL "org.opencontainers.image.source"="https://github.com/andrius/alpine-ruby"
LABEL "org.opencontainers.image.description"="Minimal dockerized ruby based on alpine-linux"

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1

ADD gemrc /root/.gemrc

RUN apk update && apk add \
  ruby \
  ruby-etc \
  ruby-bigdecimal \
  ruby-io-console \
  ruby-irb \
  ca-certificates \
  libressl \
  less \
  : \
  && apk add --virtual .build-dependencies build-base ruby-dev libressl-dev \
  && gem install bundler || apk add ruby-bundler \
  && bundle config build.nokogiri --use-system-libraries \
  && bundle config git.allow_insecure true \
  && gem install json \
  : \
  && gem cleanup \
  && apk del .build-dependencies \
  && rm -rf /usr/lib/ruby/gems/*/cache/* /var/cache/apk/* /tmp/* /var/tmp/*

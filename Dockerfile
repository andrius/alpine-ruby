# vim:set ft=dockerfile:
FROM alpine:latest

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

# maybe we want also add:
# ruby-rdoc ruby-io-console ruby-irb
RUN apk add --update \
      ruby ruby-bigdecimal ruby-bundler \
&&  apk add --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/main/ \
      ca-certificates libressl libressl-dev \
&& rm -rf /var/cache/apk/*

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1
RUN bundle config build.nokogiri --use-system-libraries

RUN gem install foreman --no-rdoc --no-ri \
&& gem cleanup


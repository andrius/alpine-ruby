# vim:set ft=dockerfile:
FROM alpine:edge

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

# maybe we want also add:
# ruby-rdoc ruby-io-console ruby-irb
RUN apk add --update \
      ruby ruby-bigdecimal ruby-bundler \
      ca-certificates libressl libressl-dev \
&& rm -rf /var/cache/apk/*

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle config git.allow_insecure true

RUN gem install foreman --no-rdoc --no-ri \
&& gem cleanup \
&& rm -rf /usr/lib/ruby/gems/*/cache/*

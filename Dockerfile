# vim:set ft=dockerfile:
FROM gliderlabs/alpine:3.4

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN apk --update add ruby build-base ruby-dev \
      curl wget openssl ca-certificates \
      less libstdc++ pcre libffi libxml2 libxslt zlib \
      ruby-bigdecimal ruby-bundler ruby-rdoc ruby-io-console ruby-irb \
\
&&  gem install foreman --no-rdoc --no-ri \
&&  gem cleanup \
\
&&  apk del build-base ruby-dev \
&&  rm -rf /var/cache/apk/*

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1
RUN bundle config build.nokogiri --use-system-libraries


# vim:set ft=dockerfile:
FROM gliderlabs/alpine:3.3

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN apk --update --no-cache add ruby build-base ruby-dev \
&&  gem install foreman --no-rdoc --no-ri \
&&  gem cleanup \
&&  echo "Cleaning packages to minimize image size" \
&&  apk del build-base ruby-dev \
&&  apk --no-cache add less libstdc++ pcre libffi libxml2 zlib \
      ruby-bigdecimal ruby-bundler ruby-rdoc ruby-io-console ruby-irb \
&&  rm -rf /var/cache/apk/*


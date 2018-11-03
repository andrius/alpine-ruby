# vim:set ft=dockerfile:
FROM alpine:3.3

LABEL maintainer="Andrius Kairiukstis <k@andrius.mobi>"

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1

ADD gemrc /root/.gemrc

RUN apk update \
\
&& apk add ruby \
           ruby-bigdecimal \
           ruby-bundler \
           ruby-io-console \
           ruby-irb \
           build-base \
           ruby-dev \
           less \
&& apk add --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/main/ \
           ca-certificates \
           libressl \
           libressl-dev \
\
&& bundle config build.nokogiri --use-system-libraries \
&& bundle config git.allow_insecure true \
&& gem install --no-rdoc --no-ri \
               json \
               foreman \
\
&& gem cleanup \
&& apk del build-base \
           ruby-dev \
           libressl-dev \
&& rm -rf /usr/lib/ruby/gems/*/cache/* \
          /var/cache/apk/* \
          /tmp/* \
          /var/tmp/*

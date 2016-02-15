Ruby 2.2 Docker image
=====================

The smallest Docker image with Ruby 2.2 (~27MB) https://hub.docker.com/r/andrius/alpine-ruby/

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Ruby 2.2](https://www.ruby-lang.org/en/).

Total size of this image is only:

[![](https://badge.imagelayers.io/andrius/alpine-ruby:latest.svg)](https://imagelayers.io/?images=andrius/alpine-ruby:latest 'Get your own badge on imagelayers.io')

Usage Example
-------------

```bash
$ docker run -ti --rm andrius/alpine-ruby ruby -e "puts 'Hello, world!'"
```

Once you have run this command you will get printed 'Hello World' from Ruby!

What's included
---------------

- bundler
- foreman

Development packages
--------------------

Sometimes you could need to install various gems, where development packages is mandatory.

Usually it's enough to install following packages:

```bash
apk-install ruby-dev build-base libxml2-dev libxslt-dev pcre-dev libffi-dev mariadb-dev postgresql-dev
```

About nokogiri installation
---------------------------

In order to install nokogiri, you could use alpine's version:

```bash
apk-install ruby-nokogiri
```

However you could need specific version or want to follow version from Gemfile, you could install it:

```bash
bundle config build.nokogiri --use-system-libraries
bundle install
```

OR

```bash
gem install nokogiri -- --use-system-libraries
```

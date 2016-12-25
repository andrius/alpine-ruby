Ruby Docker image
=================

The smallest Docker image with Ruby 2.2 (~27MB) https://hub.docker.com/r/andrius/alpine-ruby/

This image is based on Alpine Linux image, which is only a 5MB image.

Total size of this image is only:

[![](https://images.microbadger.com/badges/image/andrius/alpine-ruby.svg)](https://microbadger.com/images/andrius/alpine-ruby "Get your own image badge on microbadger.com")

Usage Example
-------------

```
docker run -ti --rm andrius/alpine-ruby:latest ruby -v
```

```bash
docker run -ti --rm andrius/alpine-ruby ruby -e "puts 'Hello, world!'"
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
apk add --update ruby-dev build-base libxml2-dev libxslt-dev pcre-dev libffi-dev mariadb-dev postgresql-dev
```

About nokogiri installation
---------------------------

In order to install nokogiri, you could use alpine's version:

```bash
apk add --update ruby-nokogiri
```

However you could need specific version or want to follow version from Gemfile, you could install it:

```bash
# installing *dev stuff
apk add --update ruby-dev build-base

bundle install
# or you could install gem directly
gem install nokogiri -- --use-system-libraries

# removing *dev stuff
apk del ruby-dev build-base
```


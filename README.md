# Ruby Docker image

The smallest Docker image with Ruby, is based on Alpine Linux image, which is only a 5MB image. It does only include ruby and bundler gem.

- [Github link](//github.com/andrius/alpine-ruby/)
- [Docker hub link](//hub.docker.com/r/andrius/alpine-ruby/)

## Support

This is minimal image with only necessary packages, to run your app in production. Image build by using only official applications from Alpine linux, and supported AS IS.

## Tags

Tags referring Alpine ruby version, not ruby version.

## Usage Example

Check ruby version:

```
docker run -ti --rm andrius/alpine-ruby:latest ruby -v
```

Hello, world:

```bash
docker run -ti --rm andrius/alpine-ruby ruby -e "puts 'Hello, world!'"
```

Once you have run this command you will get printed 'Hello World' from Ruby!

## Development packages

Sometimes you could need to install various gems, where development packages is mandatory.

Usually it's enough to install following packages:

```bash
apk add --update ruby-dev build-base \
  libxml2-dev libxslt-dev pcre-dev libffi-dev \
  mariadb-dev postgresql-dev
```

## About nokogiri installation

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

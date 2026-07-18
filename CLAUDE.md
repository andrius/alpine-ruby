# CLAUDE.md

The smallest Docker image with Ruby + bundler on Alpine Linux. Own repo (Andrius); published as `andrius/alpine-ruby`.

- Base: `alpine:${ALPINE_VERSION}` (ARG). Many per-version Dockerfiles: `Dockerfile-2.7` .. `Dockerfile-3.13`, plus `-glibc`, `-edge`, `-tiny`, `-latest`.
- Build all variants via `./build.sh`; single build e.g. `docker build --build-arg ALPINE_VERSION=3.19 -t andrius/alpine-ruby .`
- Run: `docker run -ti --rm andrius/alpine-ruby ruby -v`.
- Base image for `alpine-webrick`, `tugboat`, `udash` in this collection.
- Last commit: 2024-02-19.

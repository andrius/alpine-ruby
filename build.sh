#!/usr/bin/env bash

set -ex

if [ "$@" != "" ]; then
  TAGS=("$@")
else
  TAGS=(2.7 \
        3.1 \
        3.2 \
        3.3 \
        3.4 \
        3.5 \
        3.6 \
        3.7 \
        3.8 \
        3.9 \
        3.10 \
        latest \
        tiny \
        edge \
        glibc-latest \
  )
fi

for TAG in "${TAGS[@]}"; do
  IMAGE="andrius/alpine-ruby:${TAG:-latest}"
  DOCKERFILE="Dockerfile-${TAG}"
  echo "Builgind image ${IMAGE} from ${DOCKERFILE}"

  docker build --pull --force-rm --tag ${IMAGE} --file ./${DOCKERFILE} .
  docker push ${IMAGE}
  docker rmi -f ${IMAGE}
done

docker rmi -f \
              alpine:2.7 \
              alpine:3.1 \
              alpine:3.2 \
              alpine:2.7 \
              alpine:3.3 \
              alpine:3.4 \
              alpine:3.5 \
              alpine:3.6 \
              alpine:3.7 \
              alpine:3.8 \
              alpine:3.9 \
              alpine:3.10 \
              alpine:latest \
              alpine:edge \
              frolvlad/alpine-glibc


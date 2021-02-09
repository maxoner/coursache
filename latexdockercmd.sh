#!/bin/sh
IMAGE=tiulpin/xelatex-docker:latest
docker pull "$IMAGE"
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"

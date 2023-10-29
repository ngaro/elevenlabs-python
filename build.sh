#!/bin/bash

IMAGE_NAME="garo/elevenlabs"

if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: docker is not installed.' >&2
  exit 1
fi

docker build -t $IMAGE_NAME . || { echo 'Error: docker build failed.' >&2; exit 1; }

#!/usr/bin/env bash

BUILD_TOOL="${BUILD_TOOL:-podman}"

if ${BUILD_TOOL} pull ${IMAGE_TO_SCAN} > /dev/null; then
  echo "already exist"
else
  echo "image not present"
fi

#!/bin/bash

if (($# != 1)); then
  echo "Usage: ./release.sh <version>"
  exit 1
fi
git commit -m "release: $1"
git tag "$1"
git push origin
git push origin "$1"
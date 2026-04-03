#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-ronaldd/osticket}"
DEFAULT_TAG="$(sed -n 's/^ENV OSTICKET_VERSION=//p' Dockerfile)"
TAG="${1:-${DEFAULT_TAG}}"

./build.sh "${TAG}"
docker push "${IMAGE_NAME}:${TAG}"

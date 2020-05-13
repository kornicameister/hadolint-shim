#!/usr/bin/env bash

if command -v docker >/dev/null 2>&1; then
  dir="$(mktemp -t -d hadolint-shim.XXXXXXXXXX)"

  curl -sSL \
    -o "${dir}/hadolint" \
    https://raw.githubusercontent.com/kornicameister/hadolint-shim/master/hadolint

  chmod +x "${dir}/hadolint"
  cp -f "${dir}/hadolint" "${PREFIX-/usr/local}/bin/hadolint"

  rm -rf "${dir}"
else

  echo "docker is required for hadolint-shim to work"
  exit 1

fi

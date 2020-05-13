#!/usr/bin/env bash

test -n ${INSTALL_TRACE} && set -x

if command -v docker >/dev/null 2>&1; then

  dir="$(mktemp -t -d hadolint-shim.XXXXXXXXXX)"

  curl -sSL \
    -o "${dir}/hadolint" \
    https://raw.githubusercontent.com/kornicameister/hadolint-shim/master/hadolint

  installDir="${PREFIX-/usr/local}/bin" && mkdir -p "${installDir}"
  chmod +x "${dir}/hadolint" && cp -f "${dir}/hadolint" "${installDir}/hadolint"
  rm -rf "${dir}"

else

  echo "docker is required for hadolint-shim to work"
  exit 1

fi

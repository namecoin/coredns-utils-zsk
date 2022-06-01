#!/usr/bin/env bash

set -euxo pipefail
shopt -s nullglob globstar

# set GOPATH if empty (travis sets it, but useful for humans)
GOPATH="$(go env GOPATH)"
export GOPATH

mkdir -p "$GOPATH"/src/github.com/coredns
cp -av "$PWD" "$GOPATH"/src/github.com/coredns/coredns-utils
cd "$GOPATH"/src/github.com/coredns/coredns-utils

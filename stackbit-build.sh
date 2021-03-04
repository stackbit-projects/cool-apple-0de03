#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://widget.stackbit.com/init.js 6040de035d2162001537aa7d

echo "stackbit-build.sh: finished build"

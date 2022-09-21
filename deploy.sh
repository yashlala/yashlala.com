#!/bin/bash -e

cd "$(dirname -- "$(readlink -f -- "$0")")"

hugo
cd build
git add --all
git commit -m "Automatic Build $(date --rfc-3339=seconds)"
git push

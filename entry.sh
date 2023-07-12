#!/bin/bash

set -euo pipefail

license=$1
globs=$(echo $2 | tr "," "\n")

cd ${GITHUB_WORKSPACE}

for glob in $globs
do
    xcop --license="${license}" $(find . -path "${glob}")
done

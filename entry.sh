#!/bin/bash

set -euo pipefail

license=$1

cd ${GITHUB_WORKSPACE}

for glob in $2
do
    xcop --license="${license}" $(find . -path "${glob}")
done

#!/bin/bash

set -euo pipefail

license=$1
glob=$2

cd ${GITHUB_WORKSPACE}
xcop --license="${license}" $(find . -path "${glob}")

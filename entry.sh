#!/bin/bash

go_through() {
  for glob in $1
  do
      xcop --license="${license}" $(find . -path "${glob}") "$2"
  done
}

set -euo pipefail

license=$1

cd "${GITHUB_WORKSPACE}"

if [ "$3" == 'true' ]; then
  go_through "$2" '--fix'
else
  go_through "$2"
fi
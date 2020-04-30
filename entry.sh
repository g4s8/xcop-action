#!/bin/sh

cd ${GITHUB_WORKSPACE}
xcop --license="$1" "$2"


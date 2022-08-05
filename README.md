# xcop-action
Xcop GitHub action

[XCOP](https://github.com/yegor256/xcop) XML linter as GitHub action.

## Usage

Add `g4s8/xcop-action@master` (or use version tag instead of `master`)
after `actions/checkout@v2` action.

```yaml
---
name: XCOP linter
"on":
  push:
    branches:
      - master
  pull_request:
    brranches:
      - master
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: g4s8/xcop-action@master
```

To customize it use `license` or `files` inputs:
 - license - location of license file (default `LICENSE.txt`)
 - files - [glob](https://en.wikipedia.org/wiki/Glob_%28programming%29) location
 of all files to be checked (`**/*.xml` by default)

```yaml
- uses: g4s8/xcop-action@master
  with:
    license: MY_LICENSE.txt
    files: "src/*.xml"
```

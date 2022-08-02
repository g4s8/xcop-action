This GitHub action helps you run [XCOP](https://github.com/yegor256/xcop) XML linter.

Add `g4s8/xcop-action@master` (or use version tag instead of `master`) after `actions/checkout@v2` action:

```yaml
---
name: xcop
on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master
jobs:
  build:
    runs-on: ubuntu-20.04
    steps:
      - uses: actions/checkout@v2
      - uses: g4s8/xcop-action@master
```

It's possible to customize it specifying the location of
the license (`./LICENSE.txt` by default) and the location
of all files to be checked (`**/*.xml` by default):

```yaml
- uses: g4s8/xcop-action@master
  with:
    license: MY_LICENSE.txt
    files: "src/*.xml"
```

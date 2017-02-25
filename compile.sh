#!/bin/sh
set -ex

docker run --rm -v $(pwd):/media jrbeverly/latex:full sh build.sh
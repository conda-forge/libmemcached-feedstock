#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux
set -e
set -x

./configure --prefix="$PREFIX"

make
## tests hang on `testapp` on osx and linux
# make check
make install

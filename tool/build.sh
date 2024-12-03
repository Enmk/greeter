#!/usr/bin/env sh

set -ex

git submodule init
git submodule update
rm -r build && mkdir build
cd build
fail_here
cmake .. -G'Unix Makefiles'
cmake --build . --target all
cd ..

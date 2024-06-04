#!/bin/bash

rm -rf build
mkdir -p build
pushd build
cmake -DCMAKE_BUILD_TYPE=relwithdebinfo ..
cmake --build . --config relwithdebinfo -- -j$(nproc)
popd

# popd

# echo continue && read -n 1

#!/bin/bash

set -eu

if [ $# -ne 1 ]; then
    exit 1
fi

prefix=$1

./configure --prefix=$prefix --enable-static
make
make install

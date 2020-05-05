#!/bin/bash

set -eu

if [ $# -ne 1 ]; then
    exit 1
fi

prefix=$1

./autogen.sh
./configure --prefix=$prefix --enable-unicode --enable-cgroup --enable-setuid --enable-static
make
make install

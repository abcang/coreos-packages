#!/bin/bash

set -eu
cd `dirname $0`


# usage
cmdname="$(basename "$0")"
function usage()
{
    cat <<EOF
Usage:
    $cmdname [package] [prefix]
EOF
}

if [ $# -ne 2 ]; then
    usage
    exit 1
fi

package="$1"
prefix="$2"

if [ ! -d $package ]; then
    echo "Not supported package."
    exit 1
fi

docker=${DOCKER:=podman}

$docker build -t abcang/coreos-packages-$package $package
$docker run -it --rm -v $prefix:$prefix abcang/coreos-packages-$package $prefix



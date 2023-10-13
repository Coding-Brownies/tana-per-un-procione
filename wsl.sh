#!/bin/sh

script_dir=`dirname $(readlink -f "$0")`

docker build -t m32 $script_dir

docker run \
    -v .:/code \
    -w /code \
    -it m32 pwsh

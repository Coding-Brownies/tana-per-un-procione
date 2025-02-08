#!/bin/sh

script_dir=`dirname $(readlink -f "$0")`

if [ "$(docker images -q m32 2> /dev/null)" = "" ]; then
    docker build -t m32 $script_dir 
fi

docker run \
    -v .:/code \
    -w /code \
    -it m32 pwsh

#!/bin/sh

script_dir=`dirname $(readlink -f "$0")`
folder=`pwd | xargs -n 1 basename`

echo $script_dir
echo $folder

docker build -t m32 $script_dir

docker run \
    -v .:/code \
    -w /code \
    -it m32 pwsh

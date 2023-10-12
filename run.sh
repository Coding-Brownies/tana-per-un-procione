folder=`pwd | xargs -n 1 basename`

verbose=${VERBOSE:-false}

docker build -t m32 .

docker run \
    -v ".:/$folder" \
    -w "/$folder" \
    -it m32 pwsh
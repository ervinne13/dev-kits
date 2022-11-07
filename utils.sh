#!/bin/bash

assert_image_built() {
    if [[ -z $(docker images | grep $1 | grep $2) ]]; then
        echo "Image $1:$2 must be built first. Try execyting ./build.sh"
        exit
    fi
}

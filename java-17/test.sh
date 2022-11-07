#!/bin/bash

source ../utils.sh

assert_image_built java 17
docker run -v "$(pwd)":/src java:17 javac src/HelloWorld.java
docker run -v "$(pwd)":/src java:17 java src/HelloWorld.java

echo "Works well."
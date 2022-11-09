#!/bin/bash

source ../utils.sh

assert_image_built java 17
djavac HelloWorld.java
java HelloWorld.java

echo "Works well."
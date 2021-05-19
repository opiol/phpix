#!/bin/sh 

set -x
set -e

mkdir -p build
cd build
cmake ../ 
cmake --build .
cp phpix_controller ../

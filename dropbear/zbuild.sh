#!/bin/bash

export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CROSS_COMPILE=aarch64-linux-gnu
export CC=aarch64-linux-gnu-gcc


cd zlib-1.2.8/
mkdir zlib-install
./configure --prefix=./zlib-install 
make
make install 

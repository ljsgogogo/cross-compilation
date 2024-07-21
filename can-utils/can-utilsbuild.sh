#!/bin/bash


export PATH=${COMMON_DIR}/../cross-compilation/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin:$PATH
export CC=aarch64-none-linux-gnu-gcc
export CROSS_COMPILE=aarch64-none-linux-gnu-

cd can-utils-2021.08.0/

if [ ! -f configure ];then 
	./autogen.sh
fi

./configure \
	--host=aarch64-none-linux-gnu \
	--prefix=`pwd`/install

make
make install





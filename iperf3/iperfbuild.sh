#!/bin/bash

CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`

export PATH=${COMMON_DIR}/../cross-compilation/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin:$PATH
export CROSS_COMPILE=aarch64-none-linux-gnu-
export CROSS=aarch64-none-linux-gnu-
export CXX=aarch64-none-linux-gnu-g++
export AR=aarch64-none-linux-gnu-ar
export RANLIB=aarch64-none-linux-gnu-ranlib
export STRIP=aarch64-none-linux-gnu-strip
export LD=aarch64-none-linux-gnu-ld
export CC=aarch64-none-linux-gnu-gcc


cd iperf-3.10.1/
./configure --prefix=`pwd`/install \
	--host=aarch64-none-linux-gnu \
	--libdir=`pwd`/install/lib \
	 --with-openssl=${COMMON_DIR}/../openssl/openssl-1.1.1o/install

	
make  -j16

make install



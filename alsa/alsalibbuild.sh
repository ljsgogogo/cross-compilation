#!/bin/bash


CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`


export PATH=${COMMON_DIR}/../automake/automake-1.16/install/bin:${COMMON_DIR}/../cross-compilation/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin:$PATH


export CROSS_COMPILE=aarch64-none-linux-gnu-
export CROSS=aarch64-none-linux-gnu-
export CXX=aarch64-none-linux-gnu-g++
export AR=aarch64-none-linux-gnu-ar
export RANLIB=aarch64-none-linux-gnu-ranlib
export STRIP=aarch64-none-linux-gnu-strip
export LD=aarch64-none-linux-gnu-ld
export CC=aarch64-none-linux-gnu-gcc


cd alsa-lib-1.2.6.1/

if [ ! -d install ];then
	mkdir install
fi
./configure \
--host=aarch64-none-linux-gnu \
--prefix=`pwd`/install \
--with-configdir=`pwd`/install/arm_alsalib_config



make -j16
make install

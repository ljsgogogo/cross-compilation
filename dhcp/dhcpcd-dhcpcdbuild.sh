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

cd dhcpcd-dhcpcd-9/ 

./configure \
	--host=aarch64-none-linux-gnu \
	--bindir=`pwd`/install/bin \
	--libexecdir=`pwd`/install/libexec \
	--localstatedir=`pwd`/install/var \
	--libdir=`pwd`/install/lib \
	--includedir=`pwd`/install/include	
	

#export CPPFLAGS=/usr/include
#export LDFLAGS=/usr/lib

make -j16

make install


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

cd dropbear-2020.81/

./configure --prefix=`pwd`/install \
	--with-zlib=${COMMON_DIR}/../zlib/zlib-1.2.11/install \
	--host=aarch64-none-linux-gnu
#make PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp"
#make PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp" install
make clean
make 
make install


#dropbearkey -t rsa -f dropbear_rsa_host_key
#dropbearkey -t dss -f dropbear_dss_host_key

#!/bin/bash




export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/gcc/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin:$PATH
export CC=aarch64-none-linux-gnu-gcc



export CROSS_COMPILE=aarch64-none-linux-gnu-
export CROSS=aarch64-none-linux-gnu-
export CXX=aarch64-none-linux-gnu-g++
export AR=aarch64-none-linux-gnu-ar
export RANLIB=aarch64-none-linux-gnu-ranlib
export STRIP=aarch64-none-linux-gnu-strip
export LD=aarch64-none-linux-gnu-ld

cd libXau-1.0.9/
if [ ! -d install ];then 
	mkdir install
fi


./configure  --prefix=`pwd`/install  \
	--host=aarch64-none-linux-gnu \
	--build=x86_64-linux-gnu \
	CC=aarch64-none-linux-gnu-gcc \
	--enable-option-checking \
	CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xorgproto/xorgproto-2022.1/install/include"
	
make -j16

make install

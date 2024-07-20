#!/bin/bash


export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CC=aarch64-linux-gnu-gcc

cd alsa-lib-1.2.6.1/

if [ ! -d install ];then
	mkdir install
fi
./configure \
--host=aarch64-linux-gnu \
--prefix=`pwd`/install \
--with-configdir=`pwd`/install/arm_alsalib_config



make -j16
make install

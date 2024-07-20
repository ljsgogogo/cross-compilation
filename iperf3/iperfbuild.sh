#!/bin/bash

export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH


cd iperf-3.10.1/
if [ ! -d install ];then 
	mkdir install
fi
./configure --prefix=`pwd`/install \
	--host=aarch64-linux-gnu \
	CC=aarch64-linux-gnu-gcc \
	--libdir=`pwd`/install/lib \
	 --with-openssl=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/openssl

	
make  -j16

make install



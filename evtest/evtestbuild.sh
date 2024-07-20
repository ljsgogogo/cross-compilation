#!/bin/bash

export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH


cd  evtest-evtest-1.34/
if [ ! -d install ];then 
	mkdir install
fi
./configure --prefix=`pwd`/install \
	--host=aarch64-linux-gnu \
	CC=aarch64-linux-gnu-gcc

	
make  -j16

make install



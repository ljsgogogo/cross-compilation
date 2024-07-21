#!/bin/bash

CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`

export PATH=${COMMON_DIR}/../cross-compilation/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin:$PATH

cd  evtest-evtest-1.34/

if [ ! -f configure ];then
	./autogen.sh
fi

./configure --prefix=`pwd`/install \
	--host=aarch64-linux-gnu \
	CC=aarch64-linux-gnu-gcc

	
make  -j16
make install



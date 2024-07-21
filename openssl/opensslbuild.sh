#!/bin/bash

CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`

export PATH=${COMMON_DIR}/../cross-compilation/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin:$PATH

cd openssl-1.1.1o/

./config no-asm --prefix=`pwd`/install --cross-compile-prefix=aarch64-none-linux-gnu-


#这里要把Makefile当中的-m64删掉
sed -i 's/-m64//g' Makefile
make 
make install


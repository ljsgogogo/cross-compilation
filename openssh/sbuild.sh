#!/bin/bash





export PATH=/path/aarch64-v01c01-linux-musl-gcc/bin:$PATH
#export CROSS_COMPILE=aarch64-linux-musleabi
#export CC=aarch64-linux-musleabi-gcc



cd openssl-1.1.1c/
#注意下面这条指令--prefix=/home/UserName/ssh/install/open-ssl/...其中的"UserName"要改成自己Ubuntu的账户名
#./Configure --prefix=`pwd`/../openssl-install compiler:arm-linux-gcc

#./config no-asm shared no-async --prefix=$(pwd)/install --cross-compile-prefix=aarch64-linux-musleabi-

make 
make install


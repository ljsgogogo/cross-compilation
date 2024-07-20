#!/bin/bash


export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CROSS_COMPILE=aarch64-linux-gnu
export CC=aarch64-linux-gnu-gcc

cd dropbear-2020.81/

if [ -d dropbear-install ];then
	rm -rf dropbear-install
	mkdir dropbear-install
fi

./configure --prefix=`pwd`/dropbear-install --with-zlib=`pwd`/../zlib-1.2.8/zlib-install CC=aarch64-linux-gnu-gcc --host=linux-arch64
#make PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp"
#make PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp" install
make clean
make 
make install


#dropbearkey -t rsa -f dropbear_rsa_host_key
#dropbearkey -t dss -f dropbear_dss_host_key

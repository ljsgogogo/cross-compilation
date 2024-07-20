#!/bin/bash




export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CC=aarch64-linux-gnu-gcc



export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS=aarch64-linux-gnu-
export CXX=aarch64-linux-gnu-g++
export AR=aarch64-linux-gnu-ar
export RANLIB=aarch64-linux-gnu-ranlib
export STRIP=aarch64-linux-gnu-strip
export LD=aarch64-linux-gnu-ld

cd dhcpcd-9.4.1/
if [ ! -d install ];then 
	mkdir install
fi


./configure \
	--host=aarch64-linux-gnu \
	CC=aarch64-linux-gnu-gcc \
	--includedir+=/usr/include \
	--disable-ipv6 \
	--libdir=/lib \
	--sbindir=/sbin \
	--libexecdir=/lib/dhcpcd \
	--sysconfdir=/etc
	

#export CPPFLAGS=/usr/include
#export LDFLAGS=/usr/lib

make -j16

make install


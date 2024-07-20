#!/bin/bash



#LIBS=
#CFLAGS=
#LDFLAGS=



export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CC=aarch64-linux-gnu-gcc
export CXX=aarch64-linux-gnu-g++
export AR=aarch64-linux-gnu-ar
export RANLIB=aarch64-linux-gnu-ranlib
export STRIP=aarch64-linux-gnu-strip
export LD=aarch64-linux-gnu-ld

export PKG_CONFIG_PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libtirpc/libtirpc-1.3.2/install/lib/pkgconfig:$PKG_CONFIG_PATH

cd Python-3.8.19/
if [ ! -d install ];then 
	mkdir install
fi

#--with-rpcgen=/home/rpdzkj/second/ljswork/t527-a527-linux/out/t527/demo_linux_aiot/buildroot/buildroot/host/bin/rpcgen \

./configure ac_cv_file__dev_ptmx=no ac_cv_file__dev_ptc=no --prefix=`pwd`/install  \
	--host=aarch64-v01c01-linux-gnu \
	--target=aarch64-v01c01-linux-gnu \
	--build=x86_64-pc-linux-gnu \
	CC=aarch64-linux-gnu-gcc  \
	--disable-ipv6 

make -j16

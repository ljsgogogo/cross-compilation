#!/bin/bash





#export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-musl-gcc/bin:$PATH
#export CROSS_COMPILE=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-musl-gcc/bin/aarch64-linux-musleabi
#export CC=aarch64-linux-musleabi-gcc



cd openssh-9.6p1/
if [ ! -d install ];then
	mkdir install
fi

./configure --disable-strip --host=aarch64-linux-musleabi \
	--prefix=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/openssh/openssh-9.6p1/install \
	--with-ssl-dir=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/openssh/openssl-1.1.1c/install \
	--with-zlib=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/dropbear/zlib-1.2.8/zlib-install \
	CC=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-musl-gcc/bin/aarch64-linux-musleabi-gcc \
	AR=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-musl-gcc/bin/aarch64-linux-musleabi-ar \
	--disable-etc-default-login

make
make install


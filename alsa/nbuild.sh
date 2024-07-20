#!/bin/bash


export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CC=aarch64-linux-gnu-gcc


cd ncurses-6.1/

mkdir install

./configure --host=aarch64-linux-gnu \
	--prefix=`pwd`/install \
	--target=aarch64-linux-gnu \
	--with-shared \
	--without-profile \
	--disable-stripping \
	--without-progs \
	--with-manpages \
	--without-tests \
	--enable-widec

make -j16
make install



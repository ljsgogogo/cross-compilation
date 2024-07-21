#!/bin/bash -x

CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`

export PATH=${COMMON_DIR}/../cross-compilation/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin:$PATH
export CROSS_COMPILE=aarch64-none-linux-gnu-
export CROSS=aarch64-none-linux-gnu-
export CXX=aarch64-none-linux-gnu-g++
export AR=aarch64-none-linux-gnu-ar
export RANLIB=aarch64-none-linux-gnu-ranlib
export STRIP=aarch64-none-linux-gnu-strip
export LD=aarch64-none-linux-gnu-ld
export CC=aarch64-none-linux-gnu-gcc
cd ncurses-6.1/


./configure --host=aarch64-none-linux-gnu \
	--prefix=`pwd`/install \
	--target=aarch64-none-linux-gnu \
	--with-shared \
	--without-profile \
	--disable-stripping \
	--without-progs \
	--with-manpages \
	--without-tests \
	--enable-widec

make -j${nproc}
make install



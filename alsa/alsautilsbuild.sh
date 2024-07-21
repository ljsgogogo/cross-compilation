#!/bin/bash


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

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:${COMMON_DIR}/../ncursesw/ncurses-6.1/install/lib64/pkgconfig:${COMMON_DIR}/alsa-lib-1.2.6.1/install/lib/pkgconfig

cd alsa-utils-1.2.6/

if [ ! -d install ];then
	mkdir install
fi



./configure \
--host=aarch64-none-linux-gnu \
--prefix=`pwd`/install \
--with-systemdsystemunitdir=`pwd`/install/systemd  \
--with-udev-rules-dir=`pwd`/install/udev-rules \
--with-alsa-inc-prefix=${COMMON_DIR}/alsa-lib-1.2.6.1/install/include \
--with-alsa-prefix=${COMMON_DIR}/alsa-lib-1.2.6.1/install/lib \
--disable-xmlto \
NCURSESW_CFLAGS="`${COMMON_DIR}/../ncursesw/ncurses-6.1/install/bin/ncursesw6-config --cflags`" \
NCURSESW_LIBS="`${COMMON_DIR}/../ncursesw/ncurses-6.1/install/bin/ncursesw6-config --libs`"

#CFLAGS="-I${COMMON_DIR}/alsa-lib-1.2.6.1/install/include" \
#CPPFLAGS="-L${COMMON_DIR}/alsa-lib-1.2.6.1/install/lib" \

make -j${nproc}
make install

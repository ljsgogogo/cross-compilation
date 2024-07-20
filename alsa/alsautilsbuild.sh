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



cd alsa-utils-1.2.6/

if [ ! -d install ];then
	mkdir install
fi



#./configure \
#--host=aarch64-linux-gnu \
#--prefix=`pwd`/install \
#--with-systemdsystemunitdir=`pwd`/install/systemd  \
#--with-udev-rules-dir=`pwd`/install/udev-rules \
#--with-alsa-inc-prefix=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/alsa/alsa-lib-1.2.6.1/install/include/ \
#--with-alsa-prefix=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/alsa/alsa-lib-1.2.6.1/install/lib/ \
#--disable-xmlto \
#NCURSESW_CFLAGS="`/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/alsa/ncurses-6.1/install/bin/ncursesw6-config --cflags`" \
#NCURSESW_LIBS="`/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/alsa/ncurses-6.1/install/bin/ncursesw6-config --libs`"


make clean -j16
make -j16
make install

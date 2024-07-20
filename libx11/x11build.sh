#!/bin/bash




export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/gcc/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin:$PATH
export CC=aarch64-none-linux-gnu-gcc



export CROSS_COMPILE=aarch64-none-linux-gnu-
export CROSS=aarch64-none-linux-gnu-
export CXX=aarch64-none-linux-gnu-g++
export AR=aarch64-none-linux-gnu-ar
export RANLIB=aarch64-none-linux-gnu-ranlib
export STRIP=aarch64-none-linux-gnu-strip
export LD=aarch64-none-linux-gnu-ld

cd libX11-1.8/
if [ ! -d install ];then 
	mkdir install
fi


./configure  --prefix=`pwd`/install \
	--host=aarch64-none-linux-gnu \
	CC=aarch64-none-linux-gnu-gcc \
	--enable-option-checking \
	--enable-unix-transport \
	--enable-tcp-transport \
	--enable-ipv6 \
	--enable-local-transport \
	--enable-malloc0returnsnull \
	--disable-gtk-doc \
	--disable-gtk-doc-html \
	--disable-doc \
	--disable-docs \
	--disable-documentation \
	--with-xmlto=no \
	--with-fop=no \
	--disable-dependency-tracking \
	--disable-nls \
	--disable-static \
	--enable-shared \
	--disable-malloc0returnsnull \
	--disable-specs \
	--without-perl \
	CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xtrans/xtrans-1.4.0/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xcb/xcb-proto/xcb-proto-1.15/install -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xcb/libxcb-1.15/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xorgproto/xorgproto-2022.1/install/include" \
	LDFLAGS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xcb/libxcb-1.15/install/lib"





make -j16
make install


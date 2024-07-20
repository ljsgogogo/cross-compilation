#!/bin/bash


# -lX11	-lxext -lxorgproto

export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/gcc/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin:$PATH
export CC=aarch64-none-linux-gnu-gcc



export CROSS_COMPILE=aarch64-none-linux-gnu-
export CROSS=aarch64-none-linux-gnu-
export CXX=aarch64-none-linux-gnu-g++
export AR=aarch64-none-linux-gnu-ar
export RANLIB=aarch64-none-linux-gnu-ranlib
export STRIP=aarch64-none-linux-gnu-strip
export LD=aarch64-none-linux-gnu-ld

cd libXfixes-6.0.0/
if [ ! -d install ];then 
	mkdir install
fi

export PKG_CONFIG_PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xorgproto/xorgproto-2022.1/install/share/pkgconfig:/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/macros/util-macros-1.19.3/install/share/pkgconfig:$PKG_CONFIG_PATH

./configure  --prefix=`pwd`/install  \
	--host=aarch64-none-linux-gnu \
	--build=x86_64-linux-gnu \
	CC=aarch64-none-linux-gnu-gcc \
	CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libx11/libX11-1.8/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xorgproto/xorgproto-2022.1/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libxext/libXext-1.3.4/install/include" \
	LDFLAGS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libx11/libX11-1.8/install/lib -L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libxext/libXext-1.3.4/install/lib"  \
	--disable-gtk-doc \
	--disable-gtk-doc-html \
	--disable-doc \
	--disable-docs \
	--disable-documentation \
	--with-xmlto=no \
	--with-fop=no \
	--disable-dependency-tracking \
	--enable-ipv6 \
	--disable-nls \
	--disable-static \
	--enable-shared


make -j16

make install


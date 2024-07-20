#!/bin/bash




export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CC=aarch64-linux-gnu-gcc





cd libXext-1.3.4/
if [ ! -d install ];then 
	mkdir install
fi

export PKG_CONFIG_PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/macros/util-macros-1.19.3/install/share/pkgconfig:$PKG_CONFIG_PATH

./configure  --prefix=`pwd`/install  \
	--host=aarch64-linux-gnu \
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
	--enable-shared \
	--disable-malloc0returnsnull \
	CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xauth/libXau-1.0.9/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libx11/libX11-1.8/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xorgproto/xorgproto-2022.1/install/include" \
	LDFLAGS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/xauth/libXau-1.0.9/install/lib -L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libx11/libX11-1.8/install/lib"

	

make -j16
make install

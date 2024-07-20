#!/bin/bash



#LIBS=
#CFLAGS=
#LDFLAGS=
#start-stop-daemon -S -q -p /var/run/ntpd.pid -x "/bin/ntpd" -g -p /var/run/ntpd.pid
#start-stop-daemon -S -q -m -p /var/run/ntpd.pid -x /usr/sbin/ntpd -g daemon


export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CC=aarch64-v01c01-linux-gnu-gcc
export CXX=aarch64-linux-gnu-g++
export AR=aarch64-linux-gnu-ar
export RANLIB=aarch64-linux-gnu-ranlib
export STRIP=aarch64-linux-gnu-strip
export LD=aarch64-linux-gnu-ld

export PKG_CONFIG_PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python3.8/Python-3.8.19/install/lib/pkgconfig:/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python2.7/Python-2.7.18/install/lib/pkgconfig:$PKG_CONFIG_PATH


cd kmod-29/
if [ ! -d install ];then 
	mkdir install
fi


./configure  --prefix=`pwd`/install  \
	--host=aarch64-linux-gnu \
	CC=aarch64-v01c01-linux-gnu-gcc \
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
	--disable-static \
	--enable-shared \
	--disable-manpages \
	--with-zlib \
	--without-zstd \
	--without-xz \
	--with-openssl \
	--enable-python \
	--disable-tools \
	zlib_CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/smp/a55_linux/source/bsp/pub/rootfs_glibc_arm64/include" \
	zlib_LIBS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/smp/a55_linux/source/bsp/pub/rootfs_glibc_arm64/lib -lz"


make -j16
make install
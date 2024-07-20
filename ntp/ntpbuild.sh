#!/bin/bash



#LIBS=
#CFLAGS=
#LDFLAGS=
#start-stop-daemon -S -q -p /var/run/ntpd.pid -x "/bin/ntpd" -g -p /var/run/ntpd.pid
#start-stop-daemon -S -q -m -p /var/run/ntpd.pid -x /usr/sbin/ntpd -g daemon


export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CC=aarch64-linux-gnu-gcc
export CXX=aarch64-linux-gnu-g++
export AR=aarch64-linux-gnu-ar
export RANLIB=aarch64-linux-gnu-ranlib
export STRIP=aarch64-linux-gnu-strip
export LD=aarch64-linux-gnu-ld

cd ntp-4.2.8p15/
if [ ! -d install ];then 
	mkdir install
fi


./configure  --prefix=`pwd`/install  \
	--host=aarch64-linux-gnu \
	CC=aarch64-linux-gnu-gcc \
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
	--with-shared \
	--disable-tickadj \
	--disable-debugging \
	--with-yielding-select=yes \
	--disable-local-libevent \
	--with-crypto \
	--enable-openssl-random \
	--with-hardenfile=linux \
	--disable-linuxcaps \
	--without-lineeditlibs \
	--without-ntpsnmpd \
	--disable-ATOM \
	--disable-SHM \
	--with-sntp \
	LIBS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/openssl/lib64 -lcrypto -lssl" \
	CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/openssl/include" \
	LDFLAGS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/openssl/lib64"

make -j16
make install
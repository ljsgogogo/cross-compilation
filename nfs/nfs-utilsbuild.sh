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

export PKG_CONFIG_PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libtirpc/libtirpc-1.3.2/install/lib/pkgconfig:$PKG_CONFIG_PATH

cd nfs-utils-2.6.1/
if [ ! -d install ];then 
	mkdir install
fi

#--with-rpcgen=/home/rpdzkj/second/ljswork/t527-a527-linux/out/t527/demo_linux_aiot/buildroot/buildroot/host/bin/rpcgen \

./configure  --prefix=`pwd`/install  \
	--host=aarch64-linux-gnu \
	CC=aarch64-linux-gnu-gcc  \
	--disable-dependency-tracking \
	--enable-ipv6 \
	--disable-static \
	--enable-shared \
	--enable-tirpc \
	--without-tcp-wrappers \
	--disable-nfsv4 \
	--disable-nfsv41 \
	--disable-gss \
	--disable-svcgss \
	--disable-caps \
	--disable-uuid \
	LIBS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libtirpc/libtirpc-1.3.2/install/lib -L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/smp/a55_linux/source/bsp/pub/rootfs_glibc_arm64/lib -ltirpc" \
	CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/util-linux/util-linux-2.38/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/smp/a55_linux/source/bsp/pub/rootfs_glibc_arm64/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libevent/libevent-2.1.12-stable/install/include" \
	LDFLAGS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/util-linux/util-linux-2.38/install/lib -L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/smp/a55_linux/source/bsp/pub/rootfs_glibc_arm64/lib -L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/libevent/libevent-2.1.12-stable/install/lib" 
	
make -j16
make install
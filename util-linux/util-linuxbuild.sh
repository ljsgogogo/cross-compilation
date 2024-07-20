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


export PKG_CONFIG_PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python3.8/Python-3.8.19/install/lib/pkgconfig:/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python2.7/Python-2.7.18/install/lib/pkgconfig:$PKG_CONFIG_PATH

cd util-linux-2.38/
if [ ! -d install ];then 
	mkdir install
fi


./configure  --prefix=`pwd`/install  \
	--host=aarch64-linux-gnu \
	CC=aarch64-linux-gnu-gcc  \
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
	--enable-shared \
	--disable-rpath \
	--disable-makeinstall-chown \
	--with-systemdsystemunitdir=no \
	--disable-widechar \
	--without-selinux \
	--disable-all-programs \
	--disable-agetty \
	--disable-bfs \
	--disable-cal \
	--disable-chfn-chsh \
	--disable-chmem \
	--disable-cramfs \
	--disable-eject \
	--disable-fallocate \
	--disable-fdformat \
	--disable-fsck \
	--disable-hardlink \
	--disable-hwclock \
	--disable-ipcmk \
	--disable-ipcrm \
	--disable-ipcs \
	--disable-kill \
	--disable-last \
	--enable-libblkid \
	--disable-libfdisk \
	--enable-libmount \
	--disable-libsmartcols	\
	--enable-libuuid \
	--disable-line \
	--disable-logger \
	--disable-login \
	--disable-losetup \
	--disable-lsfd \
	--disable-lslogins\
	--disable-lsmem \
	--disable-mesg \
	--disable-minix \
	--disable-more \
	--disable-mount \
	--disable-mountpoint \
	--disable-newgrp \
	--disable-nologin \
	--disable-nsenter \
	--disable-partx \
	--disable-pg \
	--disable-pivot_root \
	--disable-raw \
	--disable-rename \
	--disable-rfkill \
	--disable-runuser \
	--disable-schedutils \
	--disable-setpriv \
	--disable-setterm \
	--disable-su \
	--disable-sulogin \
	--disable-switch_root \
	--disable-tunelp \
	--disable-ul \
	--disable-unshare \
	--disable-utmpdump \
	--disable-uuidd \
	--disable-vipw \
	--disable-wall \
	--disable-wdctl \
	--disable-wipefs \
	--disable-write \
	--disable-zramctl \
	--with-python \
	--enable-pylibmount \
	--without-audit \
	--without-libmagic \
	--without-ncurses \
	LIBS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python2.7/Python-2.7.18/install/lib -lpython2.7" \
	NCURSES_CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/alsa/ncurses-6.1/install/include" \
	NCURSES_LIBS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/alsa/ncurses-6.1/install/lib" \
	CFLAGS="-I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python2.7/Python-2.7.18/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python3.8/Python-3.8.19/install/include -I/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/smp/a55_linux/source/bsp/pub/rootfs_glibc_arm64/include" \
	LDFLAGS="-L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python2.7/Python-2.7.18/install/lib -L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/work/python3.8/Python-3.8.19/install/lib -L/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/smp/a55_linux/source/bsp/pub/rootfs_glibc_arm64/lib" 


make -j16
make install
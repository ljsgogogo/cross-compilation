#!/bin/bash


export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH
export CROSS_COMPILE=aarch64-linux-gnu
export CC=aarch64-linux-gnu-gcc

cd lrzsz-0.12.20/

if [ -d install ];then
	rm -rf install
	mkdir install
fi

./configure --prefix=`pwd`/install 


make 
make install

#cp install/bin/lrz install/bin/rz
#cp install/bin/lrz install/bin/rz
#
#ln -sf rz $(TARGET_DIR)/usr/bin/lrz
#ln -sf sz $(TARGET_DIR)/usr/bin/lsz
#ln -sf rz $(TARGET_DIR)/usr/bin/rb
#ln -sf sz $(TARGET_DIR)/usr/bin/sb
#ln -sf rz $(TARGET_DIR)/usr/bin/rx
#ln -sf sz $(TARGET_DIR)/usr/bin/sx

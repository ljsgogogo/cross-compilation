1.打补丁
patch -Np1 -i  0001-remove-bzero.patch

2.修改Makefile

CROSS_COMPIL=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin/aarch64-linux-gnu-


CC = ${CROSS_COMPIL}gcc

AR = ${CROSS_COMPIL}ar
RANLIB = ${CROSS_COMPIL}ranlib

3.指定安装路径
PREFIX=/xx/install
#!/bin/bash

cd can-utils-2021.08.0/


export PATH=/home/rpdzkj/sixth/ljswork/hisi/hi351xdv500/cross-compile/aarch64-v01c01-linux-gnu-gcc/bin:$PATH

./configure --host=aarch64-linux-gnu --prefix=`pwd`/../install

make 
make install





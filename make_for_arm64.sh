#!/bin/bash

export PATH=/home/lzq/work/rk3399/android9.0/rk3399/prebuilts/gcc/linux-x86/aarch64/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin:$PATH
export PKG_CONFIG_LIBDIR=/home/lzq/work/rk3399/android9.0/rk3399/prebuilts/gcc/linux-x86/aarch64/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/lib
PKG_CONFIG="pkg-config --static" LDFLAGS="--static -static" ./configure --disable-shared --host=aarch64-linux-gnu --prefix=/home/lzq/work/rk3399/android9.0/rk3399/external/v4l-utils/out CC=/home/lzq/work/rk3399/android9.0/rk3399/prebuilts/gcc/linux-x86/aarch64/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc
make -j48
sudo make install
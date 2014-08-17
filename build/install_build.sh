#!/bin/sh
export TOOLCHAIN=/opt/android-ndk/standalone-toolchains/android-9-arm-4.8
export CROSS_COMPILE=arm-linux-androideabi
export PATH=$TOOLCHAIN/bin:$TOOLCHAIN/$CROSS_COMPILE/bin:$PATH

echo "Installing libjpeg-turbo for Android"

make install prefix=`pwd`/install libdir=`pwd`/install/libs
#!/bin/sh
export TOOLCHAIN=/opt/android-ndk/standalone-toolchains/android-9-arm-4.8
export CROSS_COMPILE=arm-linux-androideabi
export PATH=$TOOLCHAIN/bin:$TOOLCHAIN/$CROSS_COMPILE/bin:$PATH
export SYSROOT=$TOOLCHAIN/sysroot
export CC=$CROSS_COMPILE-gcc
export CXX=$CROSS_COMPILE-g++
export CPP=$CROSS_COMPILE-cpp
export CFLAGS="-march=armv7-a -mfloat-abi=softfp -mfpu=neon -O3 -ftree-vectorize"
export LDFLAGS="-Wl,--fix-cortex-a8"
export LIBJPEG_TURBO_BASE_DIR=../../../libjpeg-turbo-1.3.1
	
echo "Configuring..."

sh $LIBJPEG_TURBO_BASE_DIR/configure --host=arm-linux --prefix=$SYSROOT/usr --with-jpeg8
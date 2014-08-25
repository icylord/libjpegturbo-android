#Build LibJpeg-Turbo for Android with neon support.

You can achieve approximatly 15ms encode time on Qualcomm 8974 compared to system default YuvImage jpeg comression time, which is approximatly 30ms.  

The LibJpeg-Turbo version is 1.3.1

How to build?

Enter build directory.

(1) ./configure_build.sh

(2) ./make_build.sh

(3) ./install_build.sh

Then you can locate libjpeg.a and others on install lib directory

Very thanks to the instruction from http://www.devahead.com/blog/2013/04/building-libjpeg-turbo-for-android/
git clone https://github.com/ChalapathiRevanth/Toolchain ~/Toolchain
export ARCH=arm64
export CROSS_COMPILE=~/Toolchain/bin/aarch64-linux-android-
mkdir output
make -C $(pwd) O=output rosy_defconfig
make -j32 -C $(pwd) O=output

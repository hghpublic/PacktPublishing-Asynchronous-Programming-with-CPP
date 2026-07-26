#!/bin/zsh

if [ -d build ]; then
    rm -rf build
fi

# CUSTOM_TRIPLET=arm64-osx-gcc-16
# cmake -S. -B build\
#     -DCMAKE_TOOLCHAIN_FILE=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake\
#     -DVCPKG_OVERLAY_TRIPLETS=/Users/hgh/hgh/dev/github/hghpublic/PacktPublishing-Asynchronous-Programming-with-CPP/dev/vcpkg/triplets\
#     -DVCPKG_TARGET_TRIPLET=${CUSTOM_TRIPLET}
cmake -S. -B build\
    -DCMAKE_TOOLCHAIN_FILE=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake\
    -DVCPKG_CHAINLOAD_TOOLCHAIN_FILE=/Users/hgh/hgh/dev/github/hghpublic/PacktPublishing-Asynchronous-Programming-with-CPP/dev/vcpkg/toolchains/gcc-16.cmake
cd build
make
./hello

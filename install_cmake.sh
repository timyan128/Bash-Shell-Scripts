#!/bin/sh

echo "please enter main version number:"
read CMAKE_V1

echo "please enter secondary version number:"
read CMAKE_V2

echo "please enter third version number:"
read CMAKE_V3

CMAKE_VERSION=${CMAKE_V1}.${CMAKE_V2}.${CMAKE_V3}

echo "wget https://cmake.org/files/v${CMAKE_V1}.${CMAKE_V2}/cmake-${CMAKE_VERSION}.tar.gz"
wget https://cmake.org/files/v${CMAKE_V1}.${CMAKE_V2}/cmake-${CMAKE_VERSION}.tar.gz

echo "tar xzf cmake-${CMAKE_VERSION}.tar.gz"
tar xzf cmake-${CMAKE_VERSION}.tar.gz

echo "cd cmake-${CMAKE_VERSION}"
cd cmake-${CMAKE_VERSION}

echo "./bootstrap; gmake; make install"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64
./bootstrap; gmake; make install

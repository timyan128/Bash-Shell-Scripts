#!/bin/sh

echo "Please enter GCC version number:"
read GCC_VERSION

GCC_ZIP_FILE="gcc-${GCC_VERSION}.tar.bz2"
GCC_SIG_FILE="${GCC_ZIP_FILE}.sig"
GNU_KEYRING="gnu-keyring.gpg"
GCC_SRC_URL="https://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}"

echo "wget ${GCC_SRC_URL}/${GCC_ZIP_FILE}" 
wget ${GCC_SRC_URL}/${GCC_ZIP_FILE}
echo "wget ${GCC_SRC_URL}/${GCC_SIG_FILE}"
wget ${GCC_SRC_URL}/${GCC_SIG_FILE}
echo "wget https://ftp.gnu.org/gnu/${GNU_KEYRING}"
wget https://ftp.gnu.org/gnu/${GNU_KEYRING}
echo "gpg --verify --no-default-keyring --keyring ./${GNU_KEYRING} $GCC_SIG_FILE" 
gpg --verify --no-default-keyring --keyring ./${GNU_KEYRING} $GCC_SIG_FILE

echo "tar -xvjf $GCC_ZIP_FILE"
tar -xvjf $GCC_ZIP_FILE

echo "cd gcc-${GCC_VERSION}"
cd gcc-${GCC_VERSION}

echo "./contrib/download_prerequisites"
./contrib/download_prerequisites

echo "cd .."
cd ..

echo "mkdir gcc_build"
mkdir gcc_build

echo "cd gcc_build"
cd gcc_build

echo "$PWD/../gcc-${GCC_VERSION}/configure --disable-multilib --enable-languages=c,c++"
$PWD/../gcc-${GCC_VERSION}/configure --disable-multilib --enable-languages=c,c++

echo "make -j${nproc}"
make -j${nproc}

echo "make install"
make install

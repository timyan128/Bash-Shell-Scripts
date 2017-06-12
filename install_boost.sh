#!/bin/sh

echo "type the main version number:"
read BV1

echo "then the second version number:"
read BV2

echo "the third one:"
read BV3

BOOST_VERSION="${BV1}.${BV2}.${BV3}"

echo "wget http://sourceforge.net/projects/boost/files/boost/${BOOST_VERSION}/boost_${BV1}_${BV2}_${BV3}.tar.bz2/download"
wget http://sourceforge.net/projects/boost/files/boost/${BOOST_VERSION}/boost_${BV1}_${BV2}_${BV3}.tar.bz2/download

echo "tar xf download"
tar xf download

cd boost_${BV1}_${BV2}_${BV3}

echo "using gcc : : /usr/local/bin/g++ ; " >> tools/build/src/user-config.jam

echo "./bootstrap.sh" 
./bootstrap.sh

echo "sudo ./b2 toolset=gcc variant=release threading=multi link=static,shared install"
sudo ./b2 toolset=gcc variant=release threading=multi link=static,shared install

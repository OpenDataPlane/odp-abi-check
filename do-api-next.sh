#!/bin/sh

set -e

rm -rf build-api-next
cp -dpr src/ODP/current build-api-next
cd build-api-next
git checkout api-next
./bootstrap
./configure --prefix=`pwd`/inst --includedir=`pwd`/../installed/ODP/api-next/include --libdir=`pwd`/../installed/ODP/api-next/lib CFLAGS="-g -Og -w -fpermissive" CXXFLAGS="-g -Og -w -fpermissive"
make -j 6
make install -j 6
cd -

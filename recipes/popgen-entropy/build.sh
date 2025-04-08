#!/bin/bash

export CFLAGS="${CFLAGS} -I${PREFIX}/include"
export CPPFLAGS="-I${PREFIX}/include"
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS} -lgsl"

autoreconf -i

./configure --enable-libgsl --prefix="${PREFIX}" --with-gsl-prefix="${PREFIX}"

make -j{$CPU_COUNT}
make install


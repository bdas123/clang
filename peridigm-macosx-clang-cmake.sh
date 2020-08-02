#!/usr/bin/env bash

PERIDIGM_ROOT=/usr/local/Peridigm
MPI_HOME=/usr/local/

rm -f CMakeCache.txt
 
# invoke cmake
cmake \
    -D CMAKE_BUILD_TYPE:STRING=Debug \
    -D CMAKE_INSTALL_PREFIX:PATH=$PERIDIGM_ROOT \
    -D TRILINOS_DIR:PATH=/usr/local/trilinos/include \
    -D CMAKE_CXX_COMPILER:STRING=$MPI_HOME/bin/mpicxx \
    -D CMAKE_CXX_FLAGS:STRING="-g -O0 -std=c++11" \
    -D Blas_LIBRARY:FILE=/usr/lib/libblas.dylib \
    -D Lapack_LIBRARY:FILE=/usr/lib/liblapack.dylib \
    ..



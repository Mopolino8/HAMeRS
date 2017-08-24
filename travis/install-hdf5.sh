#!/bin/sh

git clone --branch hdf5_1_8_14 https://git.hdfgroup.org/scm/hdffv/hdf5.git hdf5_1_8_14
cd hdf5_1_8_14
./configure --prefix=${HOME}/hdf5
make
make install
export HDF5_ROOT=${HOME}/hdf5
export HDF5_LIBRARIES=${HOME}/hdf5/lib
export HDF5_INCLUDE_DIRS=${HOME}/hdf5/include

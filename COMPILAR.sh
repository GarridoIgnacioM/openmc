#!/bin/sh
cd build
HDF5_ROOT=$HOME/anaconda3/envs/carlitos/ CC=x86_64-conda_cos6-linux-gnu-gcc CXX=x86_64-conda_cos6-linux-gnu-g++ DC=x86_64-conda_cos6-linux-gnu-gfortran cmake -DCMAKE_INSTALL_PREFIX=$HOME/anaconda3/envs/carlitos ..
#HDF5_ROOT=$HOME/anaconda3/envs/carlitos/ CC=x86_64-conda_cos7-linux-gnu-gcc CXX=x86_64-conda_cos7-linux-gnu-g++ DC=x86_64-conda_cos7-linux-gnu-gfortran cmake -DCMAKE_INSTALL_PREFIX=$HOME/anaconda3/envs/carlitos ..
make
make install
cd ..
pip install .

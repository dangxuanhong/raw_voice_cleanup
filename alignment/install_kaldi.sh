#!/bin/bash

# Prepare Kaldi
#cp ../../Makefile.kaldi.mod kaldi/tools/Makefile
cd kaldi/tools
#make atlas openfst OPENFST_VERSION=1.4.1
#make openblas openfst OPENFST_VERSION=1.6.0
make openblas openfst OPENFST_VERSION=1.4.1
#--openblas-root=../tools/OpenBLAS/install
cd ../src
./configure --static --static-math=yes --static-fst=yes --use-cuda=no --openblas-root=../tools/OpenBLAS/install
make depend
cd ../../

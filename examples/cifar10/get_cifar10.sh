#!/usr/bin/env sh
# This scripts downloads the CIFAR10 (binary version) data and unzips it.

#mkdir $DATA_ROOT/cifar10
cd $DATA_ROOT/cifar10

echo "Downloading..."

#wget --no-check-certificate http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz

echo "Unzipping..."

tar -xf cifar-10-binary.tar.gz && rm -f cifar-10-binary.tar.gz
mv cifar-10-batches-bin/* . && rm -rf cifar-10-batches-bin

# Creation is split out because leveldb sometimes causes segfault
# and needs to be re-created.

echo "Done."

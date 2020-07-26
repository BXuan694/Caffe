#!/usr/bin/env sh
# This script converts the cifar data into leveldb format.
DATA=$DATA_ROOT/cifar10
DBTYPE=lmdb

cd $DATA
echo "Creating $DBTYPE..."

rm -rf $DATA/cifar10_train_$DBTYPE $DATA/cifar10_test_$DBTYPE

$CAFFE_ROOT/build/examples/cifar10/convert_cifar_data.bin $DATA $DATA $DBTYPE

echo "Computing image mean..."

$CAFFE_ROOT/build/tools/compute_image_mean -backend=$DBTYPE $DATA/cifar10_train_$DBTYPE $DATA/mean.binaryproto

echo "Done."

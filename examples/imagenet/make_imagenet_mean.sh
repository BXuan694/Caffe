#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb

# result from val lmdb is:
# mean_value channel [0]: 102.172
# mean_value channel [1]: 114.677
# mean_value channel [2]: 120.494


build/tools/compute_image_mean $DATA_ROOT/ilsvrc/ilsvrc12_val_lmdb $DATA_ROOT/ilsvrc/imagenet_mean.binaryproto

echo "Done."

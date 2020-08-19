#!/usr/bin/env sh
set -e

./build/tools/caffe train --solver=models/vggnet/VGG_ILSVRC_16_layers_solver.prototxt $@

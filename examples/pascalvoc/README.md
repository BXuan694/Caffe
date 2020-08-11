# PASCALVOC datasets preparation

[![Build Status](https://travis-ci.org/weiliu89/caffe.svg?branch=ssd)](https://travis-ci.org/weiliu89/caffe)
[![License](https://img.shields.io/badge/license-BSD-blue.svg)](LICENSE)

Modified by [SSD](https://github.com/weiliu89/caffe/tree/ssd) by [Wei Liu](http://www.cs.unc.edu/~wliu/), [Dragomir Anguelov](https://www.linkedin.com/in/dragomiranguelov), [Dumitru Erhan](http://research.google.com/pubs/DumitruErhan.html), [Christian Szegedy](http://research.google.com/pubs/ChristianSzegedy.html), [Scott Reed](http://www-personal.umich.edu/~reedscot/), [Cheng-Yang Fu](http://www.cs.unc.edu/~cyfu/), [Alexander C. Berg](http://acberg.com).


1. Download VOC2007 and VOC2012 dataset. By default, we assume the data is stored in ` $DATA_ROOT/pascalvoc/`
  ```Shell
  # Download the data.
  cd $DATA_ROOT/pascalvoc
  wget http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
  wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
  wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
  # Extract the data.
  tar -xvf VOCtrainval_11-May-2012.tar
  tar -xvf VOCtrainval_06-Nov-2007.tar
  tar -xvf VOCtest_06-Nov-2007.tar
  ```

2. Create the LMDB file.
  ```Shell
  cd $CAFFE_ROOT
  # Create the trainval.txt, test.txt, and test_name_size.txt in $DATA_ROOT/pascalvoc/
  ./examples/pascalvoc/create_list.sh
  # You can modify the parameters in create_data.sh if needed.
  # It will create lmdb files for trainval and test with encoded original image:
  #   - $DATA_ROOT/pascalvoc/VOCdevkit/VOC0712/lmdb/VOC0712_trainval_lmdb
  #   - $DATA_ROOT/pascalvoc/VOCdevkit/VOC0712/lmdb/VOC0712_test_lmdb
  ./examples/pascalvoc/create_data.sh
  ```
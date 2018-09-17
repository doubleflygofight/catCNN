#!/bin/bash
export GLOG_logtostderr=1
/root/caffe/build/tools/convert_imageset --resize_height=256 --resize_width=256 ./train/ train.txt mtrainldb 0

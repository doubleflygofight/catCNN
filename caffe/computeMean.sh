#!/bin/bash
export GLOG_logtostderr=1
/root/caffe/build/tools/compute_image_mean mtrainldb imagenet_mean.binaryproto

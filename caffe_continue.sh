#!/bin/bash
export GLOG_logtostderr=1  
/root/caffe/build/tools/caffe train --solver=solver.prototxt --weights=bvlc_reference_caffenet.caffemodel

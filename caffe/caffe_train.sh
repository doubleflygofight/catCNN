#!/bin/bash
export  GLOG_logtostderr=1  
/root/caffe/build/tools/caffe train --solver=solver.prototxt

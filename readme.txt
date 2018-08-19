1. download https://github.com/wenbinc-Bin/dogCNN.git to local

2. download https://github.com/doubleflygofight/dogCNN.git to localdisk
   user/password:doubleflygofight/tina900128

3. modify caffe binary path in all *.sh file of step 2 repository
file list:
-rwxr-xr-x 1 root root 146 Aug 19 10:24 caffe_continue.sh
-rwxr-xr-x 1 root root 102 Aug 19 10:24 caffe_train.sh
-rwxr-xr-x 1 root root 117 Aug 19 10:24 computeMean.sh
-rwxr-xr-x 1 root root 149 Aug 19 10:24 convert_trainset.sh
-rwxr-xr-x 1 root root 143 Aug 19 10:24 convert_valset.sh

modify content:
modify "/root/caffe/build/tools/" to real path of caffe's binary file

4. copy all files in step2 repository to step 1 repository(cover copy)

5. delete following dir in step 1 repository before execute
   rm -rf mtrainldb/
   rm -rf mvalldb/

6.. run the following command in order of step 1 repository
   - convert_trainset.sh
   - convert_valset.sh
   - computeMean.sh
   - caffe_train.sh  -- no base model
     or caffe_continue.sh -- with base model


note: premise of "use base model" : 
      download http://dl.caffe.berkeleyvision.org/bvlc_reference_caffenet.caffemodel to step 1 rep



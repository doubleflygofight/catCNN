1. tensorflow download and install
   https://github.com/tensorflow/models.git
   
   #models/research 
   python setup.py
   
   #research/object_detection/g3doc/
   #according to installation.md, install and test the installation
   

2. download dataset and annotations
   # From tensorflow/models/research/
	wget http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz
	wget http://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz
	tar -xvf images.tar.gz
	tar -xvf annotations.tar.gz
	
	#After downloading the tarballs, your tensorflow/models/research/ directory should appear as follows:
	- images.tar.gz
	- annotations.tar.gz
	+ images/
	+ annotations/
	+ object_detection/
	... other files and directories
  
3. convert from the raw Oxford-IIIT Pet dataset into TFRecords
	# From tensorflow/models/research/
	python object_detection/dataset_tools/create_pet_tf_record.py \
    --label_map_path=object_detection/data/pet_label_map.pbtxt \
    --data_dir=`pwd` \
    --output_dir=`pwd`

4.  modify the configuration of the alogrithm
	such as object_detection/samples/configs/faster_rcnn_resnet101_pets.config

5.  train the dataset to get your own model
	#modify the parameter of "PATH_TO_BE_CONFIGURED"
	#comment the fine_tune_checkpoint
	#adjust the num_steps parameter
	mkdir tf_ckpt
	python object_detection/legacy/train.py --logtostderr --pipeline_config_path=object_detection/samples/configs/faster_rcnn_resnet101_pets.config --train_dir=./tf_ckpt

6.  eval the model using the same dataset
	python object_detection/legacy/eval.py --logtostderr --pipeline_config_path=object_detection/samples/configs/faster_rcnn_resnet101_pets.config --eval_dir=./eval --checkpoint_dir=./tf_ckpt 
	 
Notice
1. How the tensorflow find the images it needs?
   from create_pet_tf_record.py use "image_dir"(--data_dir+"images") + "filename" of xml find the pictures
   "folder" applies to create_pascal_tf_record.py script


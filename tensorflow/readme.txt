1. TFRecorder格式转换：
执行目录：/mnt/models/research
python object_detection/dataset_tools/create_pet_tf_record.py \
    --label_map_path=object_detection/data/pet_label_map.pbtxt \
    --data_dir=`pwd` \
    --output_dir=`pwd`

2. 模型训练
执行目录：/mnt/models/research
python object_detection/legacy/train.py --logtostderr --pipeline_config_path=faster_rcnn_inception_v2_pets.config --train_dir=./faster_R-CNN_mine/


3. 模型导出
执行目录:/mnt/models/research/object_detection
python export_inference_graph.py \
--input_type image_tensor \
--pipeline_config_path /mnt/models/research/faster_rcnn_inception_v2_pets.config \
--trained_checkpoint_prefix /mnt/models/research/faster_R-CNN_mine/model.ckpt-5723 \
--output_directory /mnt/models/research/object_detection/pbfile


4. 图片预测验证
执行目录:/mnt/models/research/object_detection
python Object_detection_image.py


----
数据集整理路径：
/mnt/models/dataset/dataset.tar.gz


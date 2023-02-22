IMG_FOLDER='/home/wenyi/DATA/VEDAI/Images'
JSON_PATH='/home/wenyi/DATA/VEDAI/COCO-ann/VEDAI_COCO_HBB_vehs.json'
OUTPUT_PATH='/home/wenyi/DATA/VEDAI/yolo-format/yolo_vedai_vehs'
OUTPUT_TILED_PATH='/home/wenyi/DATA/VEDAI/yolo-format/yolo_vedai_vehs_TILED'

python coco_to_yolo.py $IMG_FOLDER $JSON_PATH $OUTPUT_PATH
# Optional: Further split into train & val folders
# python split_train_val.py $OUTPUT_PATH $OUTPUT_PATH # Remember to delete "images" and "labels" from $OUTPUT_PATH
# Optional: Tiling
python tiling.py $OUTPUT_PATH $OUTPUT_TILED_PATH
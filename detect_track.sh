# WEIGHTS='/home/wenyi/DATA/BD_Leopard/results_13mar/e6e_NS_synthgtav_proxy_baseline_1920_bs2_e600.pt'
WEIGHTS='/home/wenyi/DATA/BD_Leopard/yolov7-e6e_synthgtav_proxy_baseline_640_bs16_e600.pt'
# WEIGHTS='/home/wenyi/DATA/BD_Leopard/yolov7-e6e_synthgtav_proxy_baseline_640_bs16_e600.pt'
CONF=0.25
IMG_SIZE=640
VIDEO_SOURCE='/home/wenyi/DATA/BD_Leopard/wk2019_trimmed.mp4'

python detect_track.py --weights $WEIGHTS --conf $CONF --img-size $IMG_SIZE --source $VIDEO_SOURCE --suppress-small-bboxes 400 --name greyscale_latest
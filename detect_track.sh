# To use this function, deep_sort_realtime has to be installed (from https://github.com/levan92/deep_sort_realtime)
WEIGHTS='/home/wenyi/DATA/BD_Leopard/weights.pt'
CONF=0.25
IMG_SIZE=640
VIDEO_SOURCE='/home/wenyi/DATA/video.mp4'

python detect_track.py --weights $WEIGHTS --conf $CONF --img-size $IMG_SIZE --source $VIDEO_SOURCE --suppress-small-bboxes 400
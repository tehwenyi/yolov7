NAME='proxy_on_vedai_sv'
DATA_CONFIG='data/custom_sv.yaml'
WEIGHTS='/home/wenyi/DATA/synthetics/results_jan2023/yolov7_synthgtav_proxy_small-vehs_640_bs32_e200.pt'

python test.py \
  --data $DATA_CONFIG \
  --img 640 \
  --batch 32 \
  --conf 0.001 \
  --iou 0.65 \
  --save-json \
  --device 0 \
  --weights $WEIGHTS \
  --name $NAME
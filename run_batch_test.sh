# batch test for real hybrid and finetune for all slices
DATA_CONFIG='data/custom_veh.yaml' # CHANGE HERE
NAME='dota_veh' # CHANGE HERE
# real
for SLICE in 50 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000
do
  python test.py \
    --data $DATA_CONFIG \
    --img 640 \
    --batch 32 \
    --conf 0.001 \
    --iou 0.65 \
    --save-json \
    --device 0 \
    --weights /home/wenyi/DATA/synthetics/results_jan2023/real-veh/yolov7_dota2.0_vehs_640_bs32_e200_slice$SLICE.pt \ # CHANGE HERE
    --name ${NAME}_real_$SLICE
done
# hybrid
for SLICE in 50 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000
do
  python test.py \
  --data $DATA_CONFIG \
  --img 640 \
  --batch 32 \
  --conf 0.001 \
  --iou 0.65 \
  --save-json \
  --device 0 \
  --weights /home/wenyi/DATA/synthetics/results_jan2023/hybrid-veh/yolov7_synthgtav_hybrid_veh_640_bs32_e200_slice$SLICE.pt \ # CHANGE HERE
  --name ${NAME}_hybrid_$SLICE
done
# finetune
for SLICE in 50 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000
do
  python test.py \
  --data $DATA_CONFIG \
  --img 640 \
  --batch 32 \
  --conf 0.001 \
  --iou 0.65 \
  --save-json \
  --device 0 \
  --weights /home/wenyi/DATA/synthetics/results_jan2023/finetune-veh/yolov7_dotav2.0_finetune_vehs_640_bs32_e200_slice$SLICE.pt \ # CHANGE HERE
  --name ${NAME}_finetune_$SLICE
done
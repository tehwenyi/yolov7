PREDICTION_JSON='/home/wenyi/DATA/yolov7/runs/test/dota_hybrid_sv_400/yolov7_synthgtav_hybrid_small-veh_640_bs32_e200_slice400_predictions.json'

# GROUND_TRUTH_JSON='/home/wenyi/DATA/VEDAI/COCO-ann/vedai-small-veh_TEST_TILED.json' # VEDAI train-test-split's TEST component SMALL VEHICLE
# GROUND_TRUTH_JSON='/home/wenyi/DATA/VEDAI/COCO-ann/vedai-veh_TEST_TILED.json' # VEDAI train-test-split's TEST component VEHICLE
# GROUND_TRUTH_JSON='/home/wenyi/DATA/VEDAI/COCO-ann/VEDAI_COCO_HBB_small-vehs_TILED.json' # VEDAI small vehicle
# GROUND_TRUTH_JSON='/home/wenyi/DATA/VEDAI/COCO-ann/VEDAI_COCO_HBB_vehs_TILED.json' # VEDAI vehicle
GROUND_TRUTH_JSON='/home/wenyi/DATA/synthetics/DOTA_val_small-vehs_TILED.json' # DOTA small vehicle
# GROUND_TRUTH_JSON='/home/wenyi/DATA/synthetics/DOTA_val_vehs_TILED.json' # DOTA vehicle

python evaluate_fbeta.py $PREDICTION_JSON $GROUND_TRUTH_JSON
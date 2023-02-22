# prefix refers to the prefix of the desired evaluation folder in 'yolov7/runs/test/'
# i.e. when i run `test.py`, i save the runs as `test.py --name "prefix_method_slice"`
# in my case, my yolov7 test results are saved with these names: vedai_veh_real_50 to vedai_veh_real_1000, vedai_veh_hybrid_50 to vedai_veh_hybrid_1000 etc
# hardcoded range is 50 to 1000 with step size of 50
PRED_FOLDER='/home/DATA/yolov7/runs/test'
GROUNDTRUTH='/home/wenyi/DATA/VEDAI/COCO-ann/VEDAI_COCO_HBB_vehs_TILED_pycocotools.json'
PREFIX='vedai_veh'
OUTPUT_FOLDER='/home/wenyi/DATA/synthetics/results/'

for TYPE in '_real' '_hybrid' '_finetune'
do
  python batch_evaluate_fbeta.py $PREFIX$TYPE $PRED_FOLDER $GROUNDTRUTH $OUTPUT_FOLDER$PREFIX$TYPE'_results.csv'
done
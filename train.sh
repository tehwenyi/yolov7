EXPR_PROJECT='proxy'

EXPR_BATCHSIZE=32
EXPR_EPOCHS=300
EXPR_IMGSIZE=640

DATA='data/custom_sv.yaml'
CFG='cfg/training/yolov7-custom.yaml'
HYP='data/hyp.scratch.custom.yaml'
WEIGHTS='weights/yolov7_training.pt'

NUM_WORKERS=8
DEVICE=0

python train.py \
  --workers $NUM_WORKERS \
  --device $DEVICE \
  --batch-size $EXPR_BATCHSIZE \
  --epochs $EXPR_EPOCHS \
  --data $DATA \
  --img-size $EXPR_IMGSIZE \
  --cfg $CFG \
  --weights $WEIGHTS \
  --hyp $HYP \
  --name $EXPR_PROJECT'_'$EXPR_IMGSIZE'_bs'$EXPR_BATCHSIZE'_e'$EXPR_EPOCHS
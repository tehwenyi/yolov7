# Helper Functions

## Evaluating F-Beta scores
To evaluate F-Beta scores (F1-Score & F2-Score), you can do it individually (`evaluate_fbeta.py`) or in a batch (`batch_evaluate_fbeta.py`).
Right now, the batch function evaluates slices of 50 to 1000 with a step size of 50

This function requires the generated `prediction.json` and the ground-truth json, both in COCO annotation format.

To generate the `prediction.json` in yolov7, simply add `--save-json` as a parameter when running `test.py`, or use `run_batch_test.sh`/`run_test.sh` in this repo

Relevant scripts:
- `evaluate_fbeta.py`
- `batch_evaluate_fbeta.py`
- `run_batch_evaluate_fbeta.sh`

## Converting Datasets in COCO format to YOLO format
Converts a COCO format dataset to YOLO format

Relevant scripts:
- `coco_to_yolo.py`
- `run_coco_to_yolo.sh`
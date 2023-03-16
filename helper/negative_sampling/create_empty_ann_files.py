# python ./helper/negative_sampling/create_empty_ann_files.py -image-folder /home/wenyi/DATA/synthetics/GTAV/Dataset/yolo_synthgtav_small_vehs_TILED/images/ -label-folder /home/wenyi/DATA/synthetics/GTAV/Dataset/yolo_synthgtav_small_vehs_TILED/lab/
from glob import glob
from pathlib import Path
# import shutil
import argparse

def main(image_folder, label_folder, img_type):
  label_folder.mkdir(parents=True, exist_ok=True)

  for image in glob(str(image_folder) + "/*" + img_type):
    filename = Path(image).stem + ".txt"
    filepath = label_folder / filename

    with open(str(filepath), 'w') as fp:
      pass

if __name__ == "__main__":
  parser = argparse.ArgumentParser()
  parser.add_argument('-image-folder', type=Path, required=True, help='folder containing the images used for negative sampling')
  parser.add_argument('-label-folder', type=Path, required=True, help='label folder for the empty ann files')
  parser.add_argument('--img-type', type=str, default='.jpg', help='image type (eg. png, jpg, jpeg)')
  opt = parser.parse_args()
  main(opt.image_folder, opt.label_folder, opt.img_type)
  print("completed")

# annotates a single image
import cv2
import numpy as np
import json
from pathlib import Path
import random

# only need to edit here
folder = Path("/home/wenyi/DATA/VEDAI/yolo-format/yolo_vedai_small-vehs_TILED")
name = "00000022_co_0_0"

label_path = folder / "labels" / (name + ".txt")
img_path = folder / "images" / (name + ".png")
print(label_path)
print(img_path)

IMG_HEIGHT = 640.0
IMG_WIDTH = 640.0

colour = (255, 255, 255)

with open(label_path) as f:
  label_data = f.readlines()

image = cv2.imread(str(img_path))
for label in label_data:
  category, xc, yc, w, h = label.split()
  width = float(w) * IMG_WIDTH
  height = float(h) * IMG_HEIGHT
  x = float(xc) * IMG_WIDTH - width / 2.0
  y = float(yc) * IMG_HEIGHT - height / 2.0
  cv2.rectangle(image, (int(x), int(y)), (int(x + width), int(y + height)), colour, 1)
  # cv2.putText(image, category, (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.4, colour, 1)
# cv2.imwrite("/home/wenyi/DATA/synthetics/eg16.png", image)
cv2.imshow('image', image)
cv2.waitKey()

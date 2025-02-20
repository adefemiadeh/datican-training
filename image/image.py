import cv2 as cv
import pydicom
import numpy as np

# Read Image
dcm = pydicom.dcmread('image/1459541791.dcm')
image = dcm.pixel_array

dcm1 = pydicom.dcmread('image/1864590858.dcm')
image1 = dcm.pixel_array

# Normalize
image = (image - np.min(image))/(np.max(image) - np.min(image)) * 255
image = image.astype(np.uint8)

dcm1 = pydicom.dcmread('image/1864590858.dcm')
image1 = dcm.pixel_array


# Resize
image = cv.resize(image, (500,500), interpolation=cv.INTER_CUBIC)


cv.imshow('DICOM Image',image)
cv.waitKey(0)
cv.destroyAllWindows()
# -*- coding: utf-8 -*-
"""
Created on Fri Aug  2 01:49:03 2019

@author: hasee
"""


from sklearn.externals import joblib

import cv2
import numpy as np
import glob
import os



TEST_PATH = './train/'
paths = glob.glob(os.path.join(TEST_PATH, '*.jpg'))



def hog_features(image):
  hog_computer = cv2.HOGDescriptor()
  return hog_computer.compute(image).flatten()

def evaluate(image_files):
    paths = glob.glob(os.path.join(TEST_PATH ,image_files,'*.jpg'))
    total = 0 
    num = 0
    clf=joblib.load("./model/svm.m")
    for path in paths:
        total += 1
        img= cv2.imread(path)
        img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
        img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
        temp = hog_features(img_gray)
        #temp.reshape(1,3780)
        #temp.tolist()
        if clf.predict(np.array([temp])) == 1:
            num += 1
    return num/total


print(evaluate('p') )
    
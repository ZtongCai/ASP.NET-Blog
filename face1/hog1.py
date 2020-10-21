# -*- coding: utf-8 -*-
"""
Created on Thu Aug  1 10:28:29 2019

@author: hasee
"""

import cv2
import numpy as np
import glob
import os
from sklearn.decomposition import PCA
import matplotlib.pyplot as plt
from sklearn import svm
from sklearn import datasets,decomposition,manifold
from mpl_toolkits.mplot3d import Axes3D

from sklearn.svm import SVC

hog = cv2.HOGDescriptor()

YES_PATH = './train/p'#存放脸图片的文件夹路径
NO_PATH = './train/n'
paths = glob.glob(os.path.join(YES_PATH, '*.jpg'))
paths.sort()

nopath = glob.glob(os.path.join(NO_PATH, '*.jpg'))
#hoglist = np.
b = []
noface = []
def hog_features(image):
  hog_computer = cv2.HOGDescriptor()
  return hog_computer.compute(image)

for path in paths:
    img= cv2.imread(path)
    img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
    img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
    temp = hog_features(img_gray).flatten()
    b.append(temp)
    
for path in nopath:
    img= cv2.imread(path)
    img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
    img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
    temp = hog_features(img_gray).flatten()
    noface.append(temp)    
    
'''#单一图片
#img = cv2.imread("./train/p/p1_1.jpg")
#print(img.shape)
img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
'''


#temp = hog.compute(img_gray)
#print(len(temp))
#print('a')


#temp = hog_features(img_gray)

#print(temp)
#print(len(temp))
#temp = np.array(temp)
'''print(temp)
print(len(temp))'''
#a = temp.reshape(1,3780)
#print(a)
#temp = temp.tolist()
#print(len(b))
#temp = temp.flatten()
#b = []
'''for i in temp:
    b.append(i)'''
#b.append(temp)
#pca = PCA(n_components=2)
pca = PCA(n_components=2, copy=True)
yesData=pca.fit_transform(b)
noData = pca.fit_transform(noface)
print('a')
print(yesData)

print('a')
print(len(yesData))
print(len(noData))

#2D

plt.plot(yesData[:,0], yesData[:,1], 'ro')
plt.plot(noData[:,0], noData[:,1],  'bo')
#3D
'''x1 = yesData[:, 0]
y1 = yesData[:, 1]
z1 = yesData[:, 2]
x2 = noData[:, 0]
y2 = noData[:, 1]
z2 = noData[:, 2]
ax = plt.subplot(111, projection='3d')
ax.scatter(x1, y1, z1, c='r')
ax.scatter(x2, y2, z2, c='g')
'''

plt.show()


#cv2.imshow('1', img_gray)

#print(hog.compute(img_gray))

'''cv2.waitKey(0)
cv2.destroyAllWindows()'''


# 合并特征
features = np.concatenate((yesData[:317], noData[:1300]))
labels = np.zeros((1617,), dtype=np.int32)
labels[:317] = 1

print('a')
# SVM分类器
#SVC(C=1.0, cache_size=200, class_weight=None, coef0=0.0,
#    decision_function_shape='ovr', degree=3, gamma='auto',
#    kernel='rbf', max_iter=-1, probability=False, random_state=None,
#    shrinking=True, tol=0.001, verbose=False)
clf = SVC()
clf.fit(features, labels)
#print('b')
#
#print(clf.fit(features,labels))
#print(clf.predict([[ 1.99142880e-01, -2.00695459e+00,  1.30687065e+00]]))
##test = []
#mg= cv2.imread('./train/n111/n29_2.jpg')
#img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
#img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
#temp = hog_features(img_gray)
#test.append(temp)
#temp = temp.reshape(1, -1)
#
#
#
##pred_result = lin_clf.predict(np.array([testData]))
#pred_result = lin_clf.predict(temp)



TEST_PATH = './train/didi'
paths = glob.glob(os.path.join(TEST_PATH, '*.jpg'))

total=0  
num=0 
test = []
for path in paths:
    total += 1
    img= cv2.imread(path)
    img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
    img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
    temp = hog_features(img_gray)
    test.append(temp)
    
testData=pca.fit_transform(test)
print(testData)

img= cv2.imread('./train/n111/n140_1.jpg')
img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
feature = hog_features(img_gray)
print(feature)

#temp1.reshape(-1, 1)
print(clf.predict(feature.reshape(-1, 8)))
#print(clf.predict([[ 1.02223,	-2.36351,	-2.68481,	-1.70609,	0.00278578,	1.31041,	-1.07689,	-1.81075]]))
#print(clf.predict([[ -1.93688318e+00,  3.77855177e+00, -1.17484395e+00, -1.11818158e+00,
#   6.71458360e-01, -1.98760550e+00, -1.16309462e+00,  3.15863785e-01]]))
#print(clf.predict([[ -3.35946981e+00, -3.08296296e+00,  3.48286199e+00,  9.18173234e-03,
#   6.52832023e-02, -7.02845658e-01, -9.83724506e-01,  7.12261589e-02]]))
#print(clf.predict([[ 2.00364003e+00, -1.46940656e+00, -1.23947720e+00, -1.33465430e-01,
#  -7.18134804e-01, -4.00280433e-01, -5.19020569e-01,  1.83623932e+00]]))
#print(clf.predict([[ 7.27429597e-01,  3.64386379e-01, -5.93008719e-01,  4.31712266e+00,
#   1.55952795e+00,  3.95830556e-01, -5.17389250e-02, -1.35594872e+00]]))
#print(clf.predict([[ -3.08378431e+00,  1.21488005e+00, -5.50956695e-01, -5.27885920e-01,
#   8.13761536e-01, 1.37665605e+00, -7.38544763e-01, -8.87330240e-01]]))
#result = clf.predict(testData) 
    
    
    
    
    
    
    
    
    
    
    
    
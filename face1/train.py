# -*- coding: utf-8 -*-
"""
Created on Thu Aug  1 23:46:20 2019

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
from sklearn.externals import joblib
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
  return hog_computer.compute(image).flatten()

for path in paths:
    img= cv2.imread(path)
    img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
    img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
    temp = hog_features(img_gray)
    #temp.reshape(1,3780)
    #temp.flatten()
    #temp.tolist()
    b.append(temp)
    
for path in nopath:
    img= cv2.imread(path)
    img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
    img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
    temp = hog_features(img_gray)
    #temp.reshape(1,3780)
    #temp.tolist()
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

#2D
'''
plt.plot(yesData[:,0], yesData[:,1], 'ro')
plt.plot(noData[:,0], noData[:,1],  'bo')'''

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

#plt.show()


#cv2.imshow('1', img_gray)

#print(hog.compute(img_gray))

'''cv2.waitKey(0)
cv2.destroyAllWindows()'''


# 合并特征

features = np.concatenate((b[:300], noface[:300]))
labels = np.zeros((600,), dtype=np.int32)
labels[:300] = 1
print('a')
# SVM分类器
#SVC(C=1.0, cache_size=200, class_weight=None, coef0=0.0,
#    decision_function_shape='ovr', degree=3, gamma='auto',
#    kernel='rbf', max_iter=-1, probability=False, random_state=None,
#    shrinking=True, tol=0.001, verbose=False)
clf = SVC(kernel='rbf', degree=8)
clf.fit(features, labels)
print('b')
#
#print(clf.fit(features,labels))
#print(clf.predict([[ 1.99142880e-01, -2.00695459e+00,  1.30687065e+00]]))
##test = []
img= cv2.imread('./train/n111/n152_8.jpg')
img_resize = cv2.resize(img,(64,128),interpolation=cv2.INTER_CUBIC)
img_gray = cv2.cvtColor(img_resize,cv2.COLOR_RGB2GRAY)
temp = hog_features(img_gray)
#test.append(temp)
#temp = temp.reshape(1, -1)
#
#
#
##pred_result = lin_clf.predict(np.array([testData]))
print(clf.predict(np.array([temp])))

joblib.dump(clf, "./model/svm.m")


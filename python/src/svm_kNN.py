import data
import numpy as np
import scipy.misc
from sklearn import svm, preprocessing, neighbors
from sklearn.cross_validation import train_test_split, KFold, cross_val_score
# from sklearn.model_selection import KFold, cross_val_score
from sklearn.metrics import accuracy_score
from statistics import mean

X, Y = data.get_stork_data()
X_train, X_val, Y_train, Y_val = train_test_split(X, Y, test_size = 0.2)

#Linear SVM
C_hp = 10
kf = KFold(len(Y), n_folds=10, shuffle=True, random_state=0)
SVMmodel = svm.SVC(kernel = 'linear', C = C_hp)
# SVMmodel.fit(X_train,Y_train)
print("The 10-fold cross validation accuracies: {0} with C = {1}".format(cross_val_score(SVMmodel, X, Y, cv=kf, n_jobs=1), C_hp))
print(mean(cross_val_score(SVMmodel, X, Y, cv=kf, n_jobs=1)))  

# print(accuracy_score(Y_val, SVMmodel.predict(X_val)))
# print(SVMmodel.predict(X_val))

#kNN
kNNmodel = neighbors.KNeighborsClassifier(n_neighbors=10)
kNNmodel.fit(X_train,Y_train)
print("The accuracy of kNN = {0}".format(accuracy_score(Y_val, kNNmodel.predict(X_val))))
print(kNNmodel.predict(X_val))
import data
import numpy as np
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import KFold
from sklearn.preprocessing import normalize
from statistics import mean

def eval_log_reg():
  X, y = data.get_stork_data()
  X, y = np.array(X), np.array(y)

  lr = LogisticRegression()
  kf = KFold(n_splits=4, shuffle=True)

  accuracy_rates = []

  for train_index, test_index in kf.split(X):
    X_train, X_test = X[train_index], X[test_index]
    y_train, y_test = y[train_index], y[test_index]

    lr.fit(X_train, y_train)
    predictions = lr.predict(X_test)
    accuracy_rates.append(sum(predictions == y_test) / len(y_test))
    # print(lr.coef_)

  return mean(accuracy_rates)

if __name__ == '__main__':
  accuracy = eval_log_reg()
  print(accuracy)

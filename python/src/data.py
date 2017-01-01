import csv
import os
import pickle
import matplotlib.pyplot as plt
import random
import numpy as np
from mpl_toolkits.basemap import Basemap
from collections import Counter
from statistics import mean

dataset_dir = os.path.join(os.path.dirname(__file__), '../data')

def parse_processed_data():
  with open(dataset_dir + '/final_data_merged.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    next(reader)

    return [row for row in reader]

def parse_reference_data():
  with open(dataset_dir + '/MPIO white stork lifetime tracking data (2013-2014)-reference-data.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    next(reader)

    return {row[1]: row for row in reader}

def get_stork_data(with_name=False):
  processed_data = parse_processed_data()
  reference_data = parse_reference_data()
  stork_data = [[]]
  current_stork = processed_data[0][0]
  breeds = set()

  for d in processed_data:
    if d[0] == current_stork:
      breeds.add(d[11])
      stork_data[-1].append(d)
    else:
      current_stork = d[0]
      stork_data.append([d])

  breeds = list(breeds)
  names, X, Y = [], [], []

  for sd in stork_data:
    if len(sd) == 1:
      continue

    num_days = len(sd)
    name = sd[0][0]
    start_date = sd[0][1]
    end_date = sd[-1][1]
    start_lat = sd[0][3]
    end_lat = sd[-1][4]
    start_lon = sd[0][5]
    end_lon = sd[-1][6]
    avg_temp = mean([float(data[7]) for data in sd if data[7] != 'NA'])
    avg_low_veg = mean([float(data[8]) for data in sd if data[8] != 'NA'])
    avg_thermal_uplift = mean([float(data[9]) for data in sd if data[9] != 'NA'])
    avg_high_veg = mean([float(data[10]) for data in sd if data[10] != 'NA'])
    avg_distance = float(sd[-1][13]) / num_days
    avg_energy = float(sd[-1][14]) / num_days
    avg_stopover_energy = mean([float(data[2]) for data in sd if float(data[12]) < 100])
    age = int(sd[-1][15])
    breed = breeds.index(sd[0][11])

    if with_name:
      names.append(name)

    X.append([
      breed,
      avg_distance,
      avg_energy,
      avg_stopover_energy,
      avg_temp,
      avg_high_veg,
      avg_low_veg,
      avg_thermal_uplift,
    ])

    # has_died = int(reference_data[name][13] == 'dead')
    has_died = int(num_days == 150)
    Y.append(has_died)

  if with_name:
    return names, X, Y
  else:
    return X, Y

def write_to_csv(rows, filename):
  with open(filename, 'w') as f:
    for row in rows:
      f.write(row + '\n')

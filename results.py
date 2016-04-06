import math
import sys

folder = sys.argv[1]
max_m = int(sys.argv[2])+1
max_k = int(sys.argv[3])+1
exp_name = sys.argv[4]
experiment = sys.argv[5]

def mean(xs):
  if len(xs) == 0:
    return 0
  return sum(float(x) for x in xs) / len(xs)

def variance(xs):
  mu = mean(xs)
  return sum(pow(float(x) - mu,2) for x in xs)

def std_dev(xs):
  return math.sqrt(variance(xs))

def std_err(xs):
  return std_dev(xs) / math.sqrt(len(xs))

def accuracies(m):
  all_results = []
  for k in range(1,max_k):
    k_results = []
    try:
      with open('{0}/output-{1}-{2}-{3}.pl'.format(folder,exp_name,m,k),'r') as f:
        for line in f:
          x = float(line.strip())
          k_results.append(x)
    except Exception, e:
      pass
      # k_results.extend([0.5 for x in range(1,21)])
      # print m
    all_results.append(mean(k_results))
  # print '{0} $\pm$ {1}'.format(mean(all_results),std_err(all_results))
  acc = mean(all_results)
  err = std_err(all_results)
  acc*=100
  err*=100
  # print acc
  print '({0},{1}) +- (0,{2})'.format(m,acc,err)
  # print '{0:.2f} $\pm$ {1:.2f}'.format(mean(es),std_err(es))

def times(m):
  all_times = []
  for k in range(1,max_k):
    with open('{0}/program-{1}-{2}-{3}.pl'.format(folder,exp_name,m,k),'r') as f:
      for line in f:
        # %time,0.006136
        xs = line.strip().split(',')
        if xs[0]!='%time':
          continue
        all_times.append(float(xs[1]))
    # all_results.append(mean(k_results))
    # (3,0.885) +- (0,0.109658560997)
  print '({0},{1}) +- (0,{2})'.format(m,mean(all_times),std_err(all_times))

if experiment =='times':
  for m in range(1,max_m):
    times(m)
else:
  for m in range(1,max_m):
    accuracies(m)
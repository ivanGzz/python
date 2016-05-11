import random
import math
import empirical

limit = 10000
exp = 10000
acc = 0
results = []

for i in range(exp):
  color = 0
  amount = 10000
  max_amount = amount
  bid = 1
  count = 0
  while count < limit and amount > 0 :
    amount = amount - bid
    next = random.randint(0, 1)
    if next == color :
      amount = amount + bid + bid
      bid = 1
      # color = 1 if color == 0 else 0
      if amount > max_amount:
        max_amount = amount
    else :
      bid = bid + bid
    count = count + 1
  acc = acc + max_amount
  results.append(max_amount)

avg = acc / exp
acc = 0
for i in range(len(results)):
  acc = acc + math.pow(results[i] - avg, 2)
std = math.sqrt(acc / exp)

result = {
    'overall': {
        'metric': 'Average',
        'value': avg
    }
}

empirical.postResults(result)

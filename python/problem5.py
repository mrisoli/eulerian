from utils.numbers import lcm

acc = 1
for i in range(11,20):
    acc = lcm(acc, i)
print(acc)

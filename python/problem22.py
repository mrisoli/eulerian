from functools import reduce
f = open("data/p22", "r")
names = [x.strip("\"") for x in f.read().split(",")]
names.sort()
f.close()
total = 0
for i in range(len(names)):
    total += (i + 1) * (reduce((lambda acc, x: acc + ord(x) - 64), names[i], 0))

print(total)

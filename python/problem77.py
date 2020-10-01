from utils.numbers import Primes
primes = Primes.upto(1000)
t = 2
while True:
    ways = [0] * (t + 1)
    ways[0] = 1
    for p in primes:
        for j in range(p, t + 1):
            ways[j] += ways[j - p]
    if ways[t] > 5000:
        print(t)
        break
    t += 1
print(t)

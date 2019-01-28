from utils.numbers import Primes
from math import sqrt, floor

num = 600851475143
primes = Primes.upto(floor(sqrt(num)))
print(max(list(filter(lambda x: num % x == 0, primes))))

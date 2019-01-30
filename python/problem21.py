from math import floor,sqrt

def find_divisors_sum(n):
    div_sum = 1
    for i in range(2, floor(sqrt(n))):
        if n % i == 0:
            div_sum += (i + (n // i))
    return div_sum

total = 0
for i in range(2, 10_000):
    divisors_sum = find_divisors_sum(i)
    if i == find_divisors_sum(divisors_sum) and divisors_sum != i:
        total += divisors_sum
print(total)

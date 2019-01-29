from utils.numbers import triangle, num_divisors
n,div_count = 500,0
div_count = 0;
while div_count < 500:
    num = triangle(n)
    div_count = num_divisors(num)
    n += 1
print(num)


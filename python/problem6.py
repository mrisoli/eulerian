sum_sq, sq_sum = 0, 0
for i in range(101):
    sum_sq += pow(i,2)
    sq_sum += i

print(pow(sq_sum, 2) - sum_sq)

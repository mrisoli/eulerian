from functools import reduce

def get_f(i):
    return 2 * (i // 3) if i % 3 == 0 else 1

def solve(v):
    return reduce(lambda p, i: (get_f(i) * p[0] + p[1], p[0]) , range(2, v + 1), (2,1))[0]

print(sum(map(int, str(solve(100)))))

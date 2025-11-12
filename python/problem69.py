def phi(n):
    result = n
    p = 2
    while p * p <= n:
        if n % p == 0:
            while n % p == 0:
                n //= p
            result -= result // p
        p += 1
    if n > 1:
        result -= result // n
    return result

def solve():
    return max(map(lambda n: (n / phi(n), n), range(2, 1000001)), key=lambda x: x[0])[1]

print(solve())

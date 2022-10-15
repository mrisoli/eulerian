from math import sqrt

def odd(n):
    a,b = int(sqrt(n)), int(sqrt(n))
    m,d,p = 0.0,1.0,0
    if a != sqrt(n):
        while b != 2 * a:
            m = d * b - m
            d = (n - m ** 2) / d
            b = int((a + m) / d)
            p += 1
    return p % 2 == 1

print(len(list(filter(odd, range(10_001)))))

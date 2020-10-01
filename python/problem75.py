from math import ceil,gcd,sqrt
l = 1500000
t = [0] * (l + 1)
ml = ceil(sqrt(l / 2))
r = 0
for m in range(2, ml):
    for n in range(1, m):
        if (n + m) % 2 == 1 and gcd(n, m) == 1:
            a = (m * m) + (n * n)
            b = (m * m) - (n * n)
            c = 2 * m * n
            p = a + b + c
            while p <= l:
                t[p] += 1
                if t[p] == 1:
                    r += 1
                elif t[p] == 2:
                    r -= 1
                p += a + b + c

print(r)

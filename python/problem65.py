def solve(v):
    n,p,f = 2,1,1
    for i in range(2, v + 1):
        t = p

        if i % 3 == 0:
            f = 2 * (i // 3)
        else:
            f = 1
        p = n
        n = f * p + t
    return n

print(sum(map(int, str(solve(100)))))

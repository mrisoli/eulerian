from itertools import permutations

n = 10

def st(a):
    return ''.join(map(lambda x: ''.join(map(str,x)), a))

def fgon(v):
    outer,inner = v[:n // 2], v[n // 2:]
    a = [[outer[i], inner[i], inner[(i + 1) % len(inner)]] for i in range(len(outer))]
    i = a.index(min(a))
    return a[i:] + a[:i]

def calc(a):
    return len(set(map(sum, a))) == 1 and len(st(a)) == 16

def val(a):
    return int(st(a)

print(max(map(val, filter(calc, map(fgon, permutations(range(1,n + 1)))))))

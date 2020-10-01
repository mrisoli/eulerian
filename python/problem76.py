t = 100
w = [0] * (t + 1)
w[0] = 1
for i in range(1, t):
    for j in range(i, t + 1):
        w[j] += w[j - i]
print(w[t])

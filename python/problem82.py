f = open("data/p82.in", "r")
grid = [i.split(",") for i in f.read().strip().split("\n")]
gs = len(grid)
for i in range(0, gs):
    grid[i] = [int(x) for x in grid[i]]
s = [row[gs - 1] for row in grid]
for i in reversed(range(gs - 1)):
    s[0] += grid[0][i]
    for j in range(1,gs):
        s[j] = min(s[j - 1] + grid[j][i], s[j] + grid[j][i])
    for j in reversed(range(gs - 1)):
        s[j] = min(s[j], s[j + 1] + grid[j][i])
print(min(s))

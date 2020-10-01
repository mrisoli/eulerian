f = open("data/p81.in", "r")
grid = [i.split(",") for i in f.read().strip().split("\n")]
gs = len(grid)
for i in range(0, gs):
    grid[i] = [int(x) for x in grid[i]]
for i in reversed(range(gs - 1)):
    grid[gs - 1][i] += grid[gs - 1][i + 1]
    grid[i][gs - 1] += grid[i + 1][gs - 1]

for i in reversed(range(gs - 1)):
    for j in reversed(range(gs - 1)):
        grid[i][j] += min(grid[i + 1][j], grid[i][j + 1])
print(grid[0][0])

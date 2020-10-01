def neighbours(g, i, j):
    n = [(i - 1, j), (i, j - 1), (i + 1, j), (i, j + 1)]
    return [(x, y) for (x, y) in n if x >= 0 and x < len(g) and y >= 0 and y < len(g[x])]
f = open("data/p83.in", "r")
grid = [i.split(",") for i in f.read().strip().split("\n")]
gs = len(grid)
for i in range(0, gs):
    grid[i] = [int(x) for x in grid[i]]

inf = float('inf')
distances = {}
vertices = set()
for i in range(len(grid)):
    for j in range(len(grid[i])):
        vertices.add((i, j))
        distances[(i,j)] = inf

distances[(0, 0)] = grid[0][0]
while vertices:
    current_vertex = min(vertices, key=lambda vertex: distances[vertex])

    if distances[current_vertex] == inf:
        break

    for neighbour in neighbours(grid, current_vertex[0], current_vertex[1]):
        (i, j) = neighbour
        alt_route = distances[current_vertex] + grid[i][j]

        if alt_route < distances[neighbour]:
            distances[neighbour] = alt_route

        vertices.discard(current_vertex)


print(distances[len(grid) - 1, len(grid[len(grid) - 1]) - 1])

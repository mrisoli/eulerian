def triangle_problem(filename):
    f = open(filename, "r")
    triangle = [i.split(" ") for i in f.read().strip().split("\n")]
    for i in range(0, len(triangle)):
        triangle[i] = [int(x) for x in triangle[i]]
    f.close()
    for i in range(len(triangle) - 1, 0, -1):
        for j in range(len(triangle[i - 1])):
            print(i, j)
            triangle[i - 1][j] += max(triangle[i][j], triangle[i][j + 1])
    return triangle[0][0]

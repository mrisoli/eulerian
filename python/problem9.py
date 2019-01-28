print([(a * b * (1000 - a - b)) for a in range(4, 497) for b in range(3,332) if pow(a,2) + pow(b,2) == pow(1000 - a - b, 2)][0])

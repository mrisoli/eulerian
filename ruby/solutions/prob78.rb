ps = [1]
n = 1
while true
  i = 0
  penta = 1
  ps.push 0
  while penta <= n
    sign = i % 4 > 1 ? -1 : 1
    ps[n] += sign * ps[n - penta]
    ps[n] %= 1000000
    i += 1
    j = i % 2 == 0 ?  i / 2 + 1 : -(i / 2 + 1)
    penta = j * (3 * j - 1) / 2;
  end
  break if ps[n] == 0
  n += 1
end
p n

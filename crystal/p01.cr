def sum_divisible_by(n)
  p = 999 / n
  n * (p * (p + 1))
end
puts (sum_divisible_by(3) + sum_divisible_by(5) - sum_divisible_by(15))/2

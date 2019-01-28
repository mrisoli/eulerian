def number_factors n
  Prime.each(n).find_all{|i| n % i == 0 }.size
end

n=690
consecutives=0
while consecutives<4
  consecutives = (number_factors(n) == 4) ? consecutives + 1 : 0
  puts n-3 if consecutives == 4
  n+=1
end

def factorial n
  n==0 ? 1 : (1..n).inject(:*)
end

total=0
for n in 23..100
  total += ((0..n).count{|r| ((factorial(n)/(factorial(r)*factorial(n-r))) > 1000000)})
end
puts total

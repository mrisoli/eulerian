def pandigital? n
 ((1..9).to_a&((n.to_s.split('')).map(&:to_i))).size==9
end

largest=918273645
for i in 9123..9876
 product=((i.to_s)+((i*2).to_s)).to_i
 largest = product if pandigital? product and product > largest
end
puts largest

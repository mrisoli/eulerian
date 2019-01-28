p=1
Prime.first(42).each do |i|
  break if p * i> 1000000
  p*=i
end
puts p

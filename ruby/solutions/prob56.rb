def digits_sum c
  c.to_s.split('').inject(0){ |sum,n| sum + n.to_i }
end

p (10..100).map {|a| (10..100).map{|b| digits_sum a**b }.max }.max

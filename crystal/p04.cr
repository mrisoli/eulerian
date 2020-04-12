l = 1
(100..999).each do |x|
  (x..999).each do |y|
    v = x * y
    s = v.to_s
    l = v if v > l && s == s.reverse
  end
end
p l

largest=2143
for i in 5..9
 a = ((1..i).to_a.map(&:to_s).permutation.to_a.map(&:join).map(&:to_i).select{|x| Prime.prime? x }).max
 largest = a unless a.nil?
end
p largest

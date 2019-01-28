answer=[]
Prime.each(10000) do |i|
   a=i.to_s.split("").permutation.map(&:join).map(&:to_i).select{|p| Prime.prime? p and p>1000}.uniq
   a.each{ |p| answer << i.to_s+((i+p)/2).to_s+p.to_s if a.include? (i+p)/2 and (i+p)/2 != i and !a.include?1487} if a.size>=3
end
p answer.map(&:to_i).min

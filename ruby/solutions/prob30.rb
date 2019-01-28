sum=0
(10..1000000).each{|i| sum+=i if(i==i.to_s.chars.map{|d| d.to_i**5}.inject(:+)) }
p sum

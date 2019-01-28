sum,numbers=0,(0..9).to_a.permutation.map(&:join)
numbers.each do |s|
 sum+= s.to_i if ((s[7..9].to_i)%17).zero? and ((s[6..8].to_i)%13).zero? and ((s[5..7].to_i)%11).zero? and ((s[4..6].to_i)%7).zero? and ((s[3..5].to_i)%5).zero? and ((s[2..4].to_i)%3).zero? and ((s[1..3].to_i)%2).zero?
end
puts sum

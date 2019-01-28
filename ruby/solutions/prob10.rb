p 2 + (3..2000000).step(2).select{|i| (Prime.prime?(i))}.inject(:+)

p (3..999).find_all {|x| x % 3 == 0 || x % 5 == 0}.inject(:+)

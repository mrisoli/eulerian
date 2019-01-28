p ((1..1000000).find_all{|i| i.to_s(2).reverse == i.to_s(2) if check_palindrome i }).inject(:+)

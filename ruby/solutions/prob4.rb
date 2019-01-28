largest=0
999.downto(100) do |a|
  999.downto(a) do |b|
   break if a*b<=largest
   largest = a*b if check_palindrome(a*b)
  end
end
p largest

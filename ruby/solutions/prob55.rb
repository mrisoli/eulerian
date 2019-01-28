sum=10000
for i in 1..10000
  aux = i
  1.upto(50) do
    aux += aux.to_s.reverse.to_i
    if(check_palindrome aux)
      sum -= 1
      break
    end
  end
end
puts sum

total=0
for i in 11..1000000
  sum,aux=0,i
  while aux>0 do
    digit = aux%10
    aux=(aux/10).floor
    digit = digit==0 ? 1 : (1..digit).inject(:*)
    sum+=digit
  end
  total+=sum if sum == i
end
p total

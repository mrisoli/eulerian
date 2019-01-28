total=0
for l in 12..1500000
  sol=0
  for a in 5..(l/2)-3
    for b in 4..a-1
      c=a-b
      if(c*c == (a*a)+(b*b))
        sol+=1
      end
    end
  end
  total+=1 if sol==1
end
puts total

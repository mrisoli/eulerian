top,largest,i=120,3,121
for i in 3..1000
  solutions=0
  for b in (4..i/2)
   for a in (3..i/3)
     solutions+=1 if(a+b+Math.sqrt((a*a) + (b*b))==i)
   end
  end
  largest,top=solutions,i if(solutions>largest)
end
p top

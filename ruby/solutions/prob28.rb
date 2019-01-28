diff,total,count,current=2,1,0,1
while(diff<=1000)
  current+=diff
  total+=current
  count+=1
  if(count==4)
    count=0
    diff+=2
  end
end
p total

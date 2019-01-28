side,diff,total,count,current,diag=3,2,0.0,0,1,1
while(side<=100000)
  current+=diff
  diag+=1
  total+=1 if(Prime.prime? current)
  count+=1
  if(count==4)
    if(total/diag<0.1)
       puts side
       break
    end
    count=0
    side+=2
    diff+=2
  end
end

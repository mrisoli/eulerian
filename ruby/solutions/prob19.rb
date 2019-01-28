date,year,sum=5,1901,0
first_days=Array[0,31,59,90,120,151,181,212,243,273,304,334]
first_days_b=Array[0,31,60,91,121,152,182,213,244,274,305,335]
while(year<2001) do
    for i in 0..11
      if(year%4==0)
        if(date==first_days_b[i])
          sum+=1
          break
        end
      else
        if(date==first_days[i])
          sum+=1
          break
        end
      end
    end
    date+=7
    if(year%4==0)
      if(date>=366)
        year+=1
        date=date%366
      end
    else
      if(date>=365)
        year+=1
        date=date%365
      end
    end
end
puts sum

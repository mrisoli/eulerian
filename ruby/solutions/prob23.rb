def is_abundant(n)
  total=1
  for i in 2..Math.sqrt(n)
    if(n%i==0)
      total+=i
      total+=(n/i) unless(n/i==i)
    end
  end
  total>n ? true : false
end

num,sum,abundants,numbers=0,(28123*28124)/2,Array.new, Array.new(28124){false}
for i in 12..28111
  if(is_abundant i)
    abundants.insert(num,i)
    (0..num).each {|j| numbers[abundants[j]+i]=true if(abundants[j]+i<28124) }
    num+=1
  end
end
(24..28123).each{|a| sum-=a if(numbers[a]) }
p sum

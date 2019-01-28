def find_divisors n
  total = 1
  for i in 2..Math.sqrt(n)
    total+=(i+(n/i))if(n%i==0)
  end if(n>3)
 total
end

sum=0
for i in 2..10000
  a=find_divisors i
  sum+=a if (i == find_divisors(a) && a!=i)
end
puts sum

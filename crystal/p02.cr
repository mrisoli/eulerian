sum,a,b=2,1,2
while( a<4000000)
  a+=b
  b+=a
  sum+= a.even? ? a : (b.even? ? b : 0)
end
p sum

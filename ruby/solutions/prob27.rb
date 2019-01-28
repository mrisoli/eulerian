def num_primes(a,b)
  total,n=0,0
  while true
    aux=(n**2)+(a*n)+(b)
    if(aux>0)
      if(Prime.prime? aux)
       total+=1
      else break
      end
    else break
    end
    n+=1
  end
  total
end

largest_a,largest_b,max_primes=1,41,40
for a in -999..999
  for b in -999..999
    aux=num_primes(a,b)
    largest_a,largest_b,max_primes=a,b,aux if(aux>max_primes)
  end
end
p largest_a*largest_b

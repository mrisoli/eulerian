def find_cycle n
  cycle=0
  n/=2 while n%2==0
  n/=5 while n%5==0
  if n>1
    a,cycle=10%n,1
    while a !=1
      a*=10
      a%=n
      cycle+=1
    end
  end
  cycle
end


largest,largen=0,-1
for n in 7..1000
  aux=find_cycle(n)
  if aux>largest
    largest=aux
    largen=n
  end
end
p largen

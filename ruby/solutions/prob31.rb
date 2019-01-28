ways=1
for p in 0..2
  total=100*p
  for f in 0..4
    total=(100*p)+(50*f)
    if(total>200)
      break
    elsif total==200
        ways+=1
        break
    end
    for q in 0..10
      total=(100*p)+(50*f)+(q*20)
      if(total>200)
       break
      elsif total==200
        ways+=1
        break
      end
      for d in 0..20
        total=(100*p)+(50*f)+(q*20)+(d*10)
      if(total>200)
       break
      elsif total==200
        ways+=1
        break
      end
       for n in 0..40
         total=(100*p)+(50*f)+(q*20)+(d*10)+(n*5)
      if(total>200)
       break
      elsif total==200
        ways+=1
        break
      end
      for t in 0..100
        total=(100*p)+(50*f)+(q*20)+(d*10)+(n*5)+(t*2)
      if(total>200)
       break
      elsif total==200
        ways+=1
        break
      end
      for i in 0..200
         total=(100*p)+(50*f)+(q*20)+(d*10)+(n*5)+(t*2)+i
      if(total>200)
       break
      elsif total==200
        ways+=1
        break
      end
       end
      end
    end
  end
end
  end
end
puts ways

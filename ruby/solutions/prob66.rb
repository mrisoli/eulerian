#x2=1+dy2
#dy2=x2-1
lx=9
ld=5
for d in 7..1000
  x=2
  while true
    y=1
    while y<x
      break if ((x**2)==1+(d*(y**2)))
      y+=1
    end
    break if ((x**2)==1+(d*(y**2)))
    x+=1
  end
  if x>lx
    lx=x
    ld=d
  end
  puts d
end
puts d

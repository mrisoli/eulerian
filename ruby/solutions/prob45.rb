h=144
n=h*(2*h-1)
while !is_pentagonal n
  h+=1
  n=h*(2*h-1)
end
p n

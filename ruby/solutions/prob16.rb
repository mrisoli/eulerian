v,sum = 1024**100,0
while(v>0)
  sum+=v%10
  v=(v/10).floor
end
p sum

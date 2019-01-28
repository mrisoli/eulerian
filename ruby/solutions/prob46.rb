n=45
while true
  if Prime.prime?(n)
    n+=2
    next
  end
  found = false
  for i in 1..n-3
    if n - ( 2 * (i * i)) < 0
      puts n
      break
    end
    if Prime.prime?(n - ( 2 * (i * i)))
      n+=2
      found=true
      break
    end
  end
  break unless found
end

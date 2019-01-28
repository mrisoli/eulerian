found,pent=false,Array.new
for i in 1..2400
  p=(i*((3*i)-1))/2
  pent.push(p)
  for j in 0..pent.size-1
    if (is_pentagonal (p + pent[j])) and (is_pentagonal (p-pent[j]).abs)
      found=true
      puts (p-pent[j]).abs
    end
    break if found
  end
  break if found
end

current_total,total,values=-1,0,Array.new(9999)
for i in 2..100
  for j in 2..100
    generated=false
    value = i**j
    for a in 0..current_total
      if(value==values[a])
        generated=true
        break
      end
    end if(current_total>-1)
    unless(generated)
      total+=1
      current_total+=1
      values[current_total]=value
    end
  end
end
p total

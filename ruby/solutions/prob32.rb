sum,numbers=0,Array[1,2,3,4,5,6,7,8,9]
numbers=numbers.permutation.to_a
found=Array.new
for i in 0..numbers.size-1
  foundp=false
  multiplicand=(numbers[i][0]*10)+numbers[i][1]
  multiplier=(numbers[i][2]*100)+(numbers[i][3]*10)+numbers[i][4]
  multb=numbers[i][0]
  multib=(numbers[i][1]*1000)+(numbers[i][2]*100)+(numbers[i][3]*10)+numbers[i][4]
  b=multb*multib
  product=(numbers[i][5]*1000)+(numbers[i][6]*100)+(numbers[i][7]*10)+numbers[i][8]
  a=multiplicand*multiplier
  if product==a || product==b
   (0...found.size).each{|j| foundp=true if found[j]==product} if found.size>0
    unless foundp
      sum+=product
      found.insert(0,product)
    end
  end
end
puts sum

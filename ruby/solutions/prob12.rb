def divisors(value)
  (((1..Math.sqrt(value)).select { |i| (value%i).zero?}).size)*2
end

i,num_div=500,0
tri_number=(i*(i+1))/2
while num_div<500
  i+=1
  tri_number+=i
  num_div=divisors(tri_number)
end
p tri_number

def find_next(solution,numbers,last)
 for i in 0...numbers.size
   if solution[i].nil?
     numbers[i].each do |j|
       if solution[last]%100 == j/100
         solution[i]=j
         last=i
       end
     end
   end
 end
end

def generate_numbers(type)
  n=0
  number=0
  generated=Array.new
  while number<10000
    n+=1
    case(type)
    when 0
      number=n*(n+1)/2#triangle
    when 1
      number=n*n#square
    when 2
      number=n*(3*n-1)/2#pentagonal
    when 3
      number=n*(2*n-1)#hexagonal
    when 4
      number=n*(5*n-3)/2#heptagonal
    when 5
      number=n*(3*n-2)#octagonal
    end
    generated.push(number) if number>999 and number<10000
  end
  generated
end

numbers,found=Array.new(6,Array.new),false
(0..5).each{|n| numbers[n]=generate_numbers(n)}
p numbers[5].size
for i in 0...numbers[5].size
  solution=Array.new(6,nil)
  solution[5]=numbers[5][i]
  if find_next(solution,numbers,5)
  end
end

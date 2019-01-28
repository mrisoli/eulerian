def triangular? n
 Math.sqrt((8*n)+1) == (Math.sqrt((8*n)+1)).floor
end

total=0
file = File.new('seed/words.txt','r')
line=file.gets.split(',')
for i in 0..line.size-1
  score=0
  line[i].delete("\"").each_byte { |c|  score+=(c-64) }
  total+=1 if triangular? score
end
puts total
file.close

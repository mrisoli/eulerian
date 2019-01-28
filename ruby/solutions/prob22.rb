file = File.new('seed/names.txt','r')
line=file.gets
line=line.split(',')
line.sort!
total=0
for i in 0...line.size
  score=0
  line[i].delete("\"").each_byte { |c|  score+=(c-64) }
  score*=(i+1)
  total+=score
end
puts total

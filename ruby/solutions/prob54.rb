wins,file=0, File.new('seed/poker.txt','r')
file.each_line{ |line| wins+=1 if PokerHand.new(line.split(' ').first(5)) > PokerHand.new(line.split(' ').last(5))}
p wins

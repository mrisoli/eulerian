p (File.new("seed/numbers.txt",'r').each_line.map(&:to_i).inject(:+).to_s[0...10].to_i)

primes=[]
Prime.each(1000000) do |i|
 str=i.to_s
 rotations = ((0..str.size).collect { |n| (str * 2)[n, str.length] }).map(&:to_i)
 primes.push(i) if rotations.all?{|x| Prime.prime? x}
end
puts primes.size

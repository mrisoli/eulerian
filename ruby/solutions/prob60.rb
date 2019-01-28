def prime_concat? n,m
 Prime.prime? (n.to_s+m.to_s).to_i and Prime.prime? (m.to_s+n.to_s).to_i
end

found=false
groups=[]
primes=Prime.take(10000)
primes.each{|i| groups << [i] }
primes.each do |p|
 groups.each do |k|
   if !k.include? p and k.all? {|n| prime_concat? p,n }
     k<<p
     if k.size==5
       p k.inject(:+)
       found=true
       break
     end
   end
 end
 break if found
end

def replace_digits s,digit
  n,a='',Array.new
  s.each{|x| n+=x}
  n=n.to_i
  primes,start=1,(digit.to_i)+1
  for i in start..9
    for j in 0..s.size-1
       a[j] = s[j]==digit ? i.to_s : s[j]
    end
    number=""
    a.each { |b| number+=b }
    number=number.to_i
    primes+=1 if Prime.prime?(number)
  end
  return true if primes>7
end

def find_digits n
  s,zerocount,onecount,twocount=n.to_s.split(''),0,0,0
  for i in 0..s.size-2
    zerocount+=1 if s[i]=='0'
    onecount+=1 if s[i]=='1'
    twocount+=1 if s[i]== '2'
  end
  return replace_digits(s,'0') if zerocount==3
  return replace_digits(s,'1') if onecount==3
  return replace_digits(s,'2') if twocount==3
  return false
end

p Prime.first(50000).find{|n| find_digits(n) and Prime.prime?(n) }

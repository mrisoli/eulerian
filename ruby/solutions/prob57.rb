def count_digits n
  n.to_s.split('').size
end

total,n,d,count=1,3,2,0
for a in 2..999
  n_prev=n
  n+=(2*d)
  d+=n_prev
  count+=1 if count_digits(n)>count_digits(d)
end
puts count

sum,total=0,0
Prime.each(1000000) do |i|
  if(i>20)
    a,b=i.to_s,i.to_s
    c=[]
    while a.size>1
      c<<a[0..-2]
      a=a[0..-2]
      c<<b[1..-1]
      b=b[1..-1]
    end
    c.map!(&:to_i)
    if c.all?{|x| Prime.prime? x}
      sum+=i
      total+=1
    end
    break if total==11
  end
end
p sum

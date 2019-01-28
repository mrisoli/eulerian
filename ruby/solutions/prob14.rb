longest,longestno=1,1
chainsize=Array.new(1000000){0.to_i}
chainsize[1]=1
chainsize[2]=2
for i in 3..1000000
  chain,num=0,i
  while(num>1)
    chain+=1
    num = num % 2 == 0 ? num / 2 : 3 * num + 1
    if(chainsize[num]>0)
      chain+=(chainsize[num])
      break
    end if (num<1000000)
  end
  longest,longestno=chain,i if chain>longest
  chainsize[i]=chain
end
puts longestno

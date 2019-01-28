str,i='',0
while str.size<=1000000
  i+=1
  str+=i.to_s
end
p (str[0].to_i)*(str[9].to_i)*(str[99].to_i)*(str[999].to_i)*(str[9999].to_i)*(str[99999].to_i)*(str[999999].to_i)

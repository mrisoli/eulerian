step,anterior,value,digits=3,1,2,0
while digits<1000 do
  digits,aux=0,value
  value+=anterior
  anterior=aux
  step+=1
  aux=value
  while aux>0 do
    digits+=1
    aux=(aux/10).floor
  end
end
p step

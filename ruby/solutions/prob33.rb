d=1
for i in 1..9
  for j in 1..i-1
    for k in 1..j-1
      ki=(k*10)+i
      ij=(i*10)+j
      d*=ki/ij if k*ij==ki*j
    end
  end
end
p d

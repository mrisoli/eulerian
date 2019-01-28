s = Array.new(21) {Array.new(21) {0.to_i}      }
s[0][0]=1
for i in (0..20)
  for j in (0..20)
    s[i+1][j]+=s[i][j]if(i+1<21)
    s[i][j+1]+=s[i][j]if(j+1<21)
  end
end
p s[20][20]

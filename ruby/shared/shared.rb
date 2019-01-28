def check_palindrome n
  n == n.to_s.reverse.to_i
end

def triangle_problem file, size
  tri,file=Array.new(size),File.new(file,'r')
  for i in 0..size-1
    tri[i]=file.gets.split(' ')
    for j in 0..i+1
      tri[i][j]=tri[i][j].to_i
    end
  end
  file.close
  (size-1).downto(1) do |a|
    for b in 0..tri[a-1].size-1
      tri[a-1][b]+=tri[a][b]>tri[a][b+1] ? tri[a][b] : tri[a][b+1]
    end
  end
  p tri[0][0]
end

def is_pentagonal n
  p = (Math.sqrt(1 + 24*n) + 1) / 6
  p==p.floor
end

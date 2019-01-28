file=File.new("seed/matrix1.txt","r")
m = Array.new(80)
i=0
while (line = file.gets)
    m[i]=line.split(",")
    for j in 0..79
       m[i][j]=m[i][j].to_i
    end
    i+=1
end

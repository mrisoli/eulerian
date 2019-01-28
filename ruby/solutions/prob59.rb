def decrypt(a,b,c,text)
  decryption=Array.new(text.size)
  for i in 0..text.length-1
    case i%3
    when 0
      decryption[i]=(text[i]^a).to_i
    when 1
      decryption[i]=(text[i]^b).to_i
    when 2
      decryption[i]=(text[i]^c).to_i
    end
  end
  for j in 0..decryption.length-4
    if decryption[j].chr=='v' and decryption[j+1].chr=='e' and decryption[j+2].chr=='r' and decryption[j+3].chr=='y'
      checksum=decryption.inject(:+)
      puts checksum
      break
    end
  end
end

file=File.new('seed/cipher.txt','r')
text=file.gets.split(',').map(&:to_i)
for a in 97..121
  for b in 97..121
    for c in 97..121
      decrypt(a,b,c,text)
    end
  end
end

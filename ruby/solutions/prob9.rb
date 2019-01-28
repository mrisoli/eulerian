for b in (4..497)
  for a in (3..332)
    c = 1000-a-b
    if(c*c == (a*a)+(b*b))
      puts a*b*c
      break
    end
  end
  break if(c*c == (a*a)+(b*b))
end

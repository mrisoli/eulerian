a="one thousand"
sum=a.count "^ "
sum += ("hundred".count "^ ")*900
units = Array["one","two","three","four","five",
                  "six","seven","eight","nine", "ten",
                  "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                  "sixteen", "seventeen", "eighteen", "nineteen",
                  ]
dozens= Array["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
for i in 0..8
  hundred = units[i].count "^"
  unit = hundred*90
  hundred*=100
  sum+=hundred+unit
end
sum+= ("and".count "^ ")*99*9
(0..7).each{|j| sum+= (dozens[j].count "^ ")*100 }
(9..18).each{|k| sum+=(units[k].count "^ ")*10 }
puts sum

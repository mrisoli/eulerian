sum,factorial =0,(1..100).inject(:*)
while factorial > 0 do
  sum+=factorial%10
  factorial=(factorial/10).floor
end
puts sum

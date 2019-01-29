a = "one thousand"
sum = len("onethousand")
sum += (len("hundred")*900)

units = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
]

dozens= ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

for i in range(9):
    hundred = len(units[i])
    unit = hundred * 90
    hundred *= 100
    sum += hundred + unit
sum += len("and")*99*9
for i in range(8):
    sum += len(dozens[i])*100
for i in range(9,19):
    sum += len(units[i])*10
print(sum)

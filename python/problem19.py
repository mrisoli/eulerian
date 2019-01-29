date, year, sundays = 5,1901,0
first_days = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334]
while year < 2001:
    for i in range(12):
        leap_year_offset = 1 if year % 4 == 0 and i > 1 else 0
        if date == first_days[i] + leap_year_offset:
            sundays += 1
            break
    date += 7
    leap_year = 366 if year % 4 == 0 else 365
    if date >= leap_year:
        year += 1
        date %= leap_year
print(sundays)

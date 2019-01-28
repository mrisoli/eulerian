sum,a,b=2,1,2
while(a<4000000):
    a+=b
    b+=a
    if a % 2 == 0:
        sum += a
    elif b % 2 == 0:
        sum += b
print(sum)

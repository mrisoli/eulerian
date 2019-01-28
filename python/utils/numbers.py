from math import floor, gcd, sqrt
def fib(n):
    return floor(((1+sqrt(5))**n-(1-sqrt(5))**n)/(2**n*sqrt(5)))

def is_palindrome(n):
    return n == int(str(n)[::-1])

def lcm(a, b):
    return a * b // gcd(a, b)

class Primes:
    def upto(n):
        if n<=2:
            return []
        sieve=[True]*(n+1)
        for x in range(3,int(n**0.5)+1,2):
            for y in range(3,(n//x)+1,2):
                sieve[(x*y)]=False

        return [2]+[i for i in range(3,n,2) if sieve[i]]

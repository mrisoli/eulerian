module Data.Numbers
( fib
, isPalindrome
, polygonal
) where

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

isPalindrome :: Integer -> Bool
isPalindrome n = n  == reverseInt n

reverseInt :: Integer -> Integer
reverseInt = read . reverse . show

triangle :: Integer -> Integer
triangle n = div (n * (n + 1)) 2

square :: Integer -> Integer
square n = n * n

pentagonal :: Integer -> Integer
pentagonal n = div (n * ((3 * n) - 1))  2

hexagonal :: Integer -> Integer
hexagonal n = n * ((2 * n) - 1)

heptagonal :: Integer -> Integer
heptagonal n = div (n * ((5 * n) - 3)) 2

octagonal :: Integer -> Integer
octagonal n = n * ((3 * n) - 2)

polygonal:: Integer -> Integer -> Integer
polygonal 3 = triangle
polygonal 4 = square
polygonal 5 = pentagonal
polygonal 6 = hexagonal
polygonal 7 = heptagonal
polygonal 8 = octagonal

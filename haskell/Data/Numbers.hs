module Data.Numbers
( fac
, fib
, digits
, isPalindrome
, eulerTotient
, triangle
, polygonal
) where

fac :: Int -> Int
fac = product . flip take [1..]

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

isPalindrome :: Integer -> Bool
isPalindrome n = n  == reverseInt n

reverseInt :: Integer -> Integer
reverseInt = read . reverse . show

eulerTotient :: Integer -> Int
eulerTotient n = sum [1 | 1<-gcd n<$>[1..n]]

digits :: Int -> [Int]
digits = map (read . (:[])) . show

triangle :: Int -> Int
triangle n = div (n * (n + 1)) 2

square :: Int -> Int
square n = n * n

pentagonal :: Int -> Int
pentagonal n = div (n * ((3 * n) - 1))  2

hexagonal :: Int -> Int
hexagonal n = n * ((2 * n) - 1)

heptagonal :: Int -> Int
heptagonal n = div (n * ((5 * n) - 3)) 2

octagonal :: Int -> Int
octagonal n = n * ((3 * n) - 2)

polygonal:: Int -> Int -> Int
polygonal 3 = triangle
polygonal 4 = square
polygonal 5 = pentagonal
polygonal 6 = hexagonal
polygonal 7 = heptagonal
polygonal 8 = octagonal

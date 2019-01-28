module Data.Numbers
( fib
, isPalindrome
) where

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

isPalindrome :: Integer -> Bool
isPalindrome n = n  == reverseInt n

reverseInt :: Integer -> Integer
reverseInt = read . reverse . show

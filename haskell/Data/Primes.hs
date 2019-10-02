module Data.Primes
( isPrime
, primes
, primeFactors
) where

import Data.List (unfoldr)
import Data.Maybe (listToMaybe)

isPrime :: Int -> Bool
isPrime n = n > 1 &&
    foldr (\p r -> p*p > n || ((n `rem` p) /= 0 && r))
        True primes

pfactors prs n = unfoldr (\(ds,n) -> listToMaybe
     [(x, (dropWhile (< x) ds, div n x)) | x <- takeWhile ((<=n).(^2)) ds ++
                                                        [n|n>1], mod n x==0]) (prs,n)

primes :: [Int]
primes = 2 : sieve primes [3,5..] where
        sieve (p:ps) xs = h ++ sieve ps [x | x <- t, rem x p /= 0]
                              where (h, t) = span (< p*p) xs

primeFactors :: Int -> [Int]
primeFactors n
    | n == 1 = [1]
    | n > 1 = go n primes
   where
        go n ps@(p:t)
            | p*p > n    = [n]
            | r == 0     =  p : go q ps
            | otherwise  =      go n t
            where
            (q,r) = quotRem n p


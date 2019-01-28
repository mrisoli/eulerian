import Data.Primes (primes)
main = print $ sum $ takeWhile(<2000000) primes

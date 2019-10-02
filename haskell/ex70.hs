import Data.List (sort)
import Data.Primes (primes)

permutation :: Int -> Int -> Bool
permutation x y = sort (show x) == sort (show y)

totient :: Int -> Int -> Int
totient p1 p2 = (p1 - 1) * (p2 - 1)

candidates :: [(Int, Int)]
candidates = [(n, phi) | p1 <- ps, p2 <- dropWhile (<= p1) ps, let n = p1 * p2, n <= 10000000, let phi = totient p1 p2]
    where ps = take 500 primes

main = print $ snd $ minimum [(fromIntegral n / fromIntegral phi, n) | (n, phi) <- candidates, permutation n phi]

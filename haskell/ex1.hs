main = print $ div (sumDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15)) 2

sumDivisibleBy :: Int -> Int
sumDivisibleBy n =
    (n * (p *(p + 1)))
    where p = div 999 n

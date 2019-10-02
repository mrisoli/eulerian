main = print $ snd $ maximum [(fromIntegral n / fromIntegral d, n) | d <- [2..1000000], let n = quot (3 * d - 1) 7]

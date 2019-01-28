main = print $ squaresSum - sumSquares

sumSquares = sum $ map (^2) [1..100]
squaresSum = sum [1..100] ^2

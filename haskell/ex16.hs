import Data.Numbers (digits)
main = print $ sum $ digits $ show $ (2 :: Integer) ^ 1000

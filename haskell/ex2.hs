import qualified Data.Numbers as Numbers

main = print(sum $ filter even $ takeWhile (<4000000) $ map Numbers.fib [1..])

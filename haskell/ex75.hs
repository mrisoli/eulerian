import Data.Array

partition :: Int -> Integer
partition n = partition' ! (n, n)
        where
                partition' = listArray ((0,0),(n,n)) [p m k | m <- [0..n], k <- [0..n]]
                p _ 0 = 0
                p 0 _ = 1
                p m k = sum [partition' ! ((m-i), i) | i <- [0..(min m k)]]

main :: IO ()
main = print $ (partition $ 100) - 1

import Data.List (unfoldr)
import Data.Ratio ((%))

farey :: Integer -> [Rational]
farey n = 0 : unfoldr step (0, 1, 1, n)
    where
        step (a, b, c, d)
          | c > n = Nothing
          | otherwise =
              let k = (n + b) `quot` d
               in Just (c %d, (c, d, k * c - a, k * d - b))

filterFarey :: Rational -> Bool
filterFarey x = let k = fromRational x
                 in k > (fromIntegral 1 / fromIntegral 3) && k < (fromIntegral 1 / fromIntegral 2)

main = print $ length $ filter filterFarey (farey 12000)

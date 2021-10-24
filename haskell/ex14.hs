import Data.List
import Data.Ord

main = print $ largestSeq

largestSeq :: Int
largestSeq = snd $ maximumBy (comparing fst) (map collatz [1..1000000])

collatz :: Int -> (Int, Int)
collatz n = (makeChain 1 n, n)

makeChain :: Int -> Int -> Int
makeChain c 1 = c
makeChain c n
  | mod n 2 == 0 = makeChain (c + 1) (div n 2)
  | otherwise = makeChain (c + 1) ((3 * n)  + 1)

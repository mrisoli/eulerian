import Data.Numbers (polygonal)
import qualified Data.Map.Strict as Map
import Debug.Trace
import Data.List (find, maximumBy, nub)
import Data.Ord (comparing)

type Pair = (Integer, Integer)
type LinkedPairs = Map.Map Pair [Pair]

generateNumbers :: [Pair]
generateNumbers = [(n, polygonal n p) | n <- [3..8], p <- dropWhile(\i -> polygonal n i < 1000) $ takeWhile(\i -> polygonal n i < 10000) [1..]]

setupMap :: [Pair] -> Map.Map Pair [Pair]
setupMap l = Map.fromList $ collectPairs l

collectPairs :: [Pair] -> [(Pair, [Pair])]
collectPairs l = map (\x -> getChains x l) l

getChains :: Pair -> [Pair] -> (Pair, [Pair])
getChains (x, y) l = ((x, y), filter (\(n, p) -> n /= x && ((div p 100) == (mod y 100))) l)

generateChains :: LinkedPairs -> [[Pair]]
generateChains m
    =
    let octagonals = Map.filterWithKey (\(n, _) _ -> n == 8) m
    in concat [genChainsPerOctagonal m [x] | x <- Map.keys(octagonals)]

genChainsPerOctagonal :: LinkedPairs -> [Pair] -> [[Pair]]
genChainsPerOctagonal m p =
    let candidates = maybeCandidates m p
    in case candidates of
    [] -> [p]
    c -> concat [(genChainsPerOctagonal m (x:p)) | x <- c]

maybeCandidates :: LinkedPairs -> [Pair] -> [Pair]
maybeCandidates m p =
    let indexes = map fst p
    in
        case Map.lookup (head p) m of
            Nothing -> []
            Just l -> [x | x <- filter (\pair -> polygonalNotInList (fst pair) indexes) l]

polygonalNotInList :: Integer -> [Integer] -> Bool
polygonalNotInList p l = not $ elem p l

findAnswer :: [[Pair]] -> [Pair]
findAnswer = head . filter doesChainClose

doesChainClose :: [Pair] -> Bool
doesChainClose p =
    let headval = snd(head p)
        lastval = snd(last p)
    in (mod headval 100) == (div lastval 100) && length p == 6

sumAnswer :: [Pair] -> Integer
sumAnswer = sum . map snd

main = print $  sumAnswer $ findAnswer $ generateChains $ setupMap $ generateNumbers

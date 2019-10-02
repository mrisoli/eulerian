import Data.List (maximumBy, permutations, sortBy)
import Data.Ord (comparing)

data Edge = Edge Int Int Int
data Vertex = Vertex Int Int

edgeToStr :: Edge -> String
edgeToStr (Edge a b c) =
    show a ++ show b ++ show c

graphToStr :: [Edge] -> String
graphToStr edges =
    concat $ map edgeToStr edges

createEdge :: Vertex -> Int -> Edge
createEdge (Vertex a b) e =
    (Edge e a b)

buildVertexL :: [Int] -> [Vertex]
buildVertexL xs =
    [(Vertex a b) | (a, b) <- zip xs (tail xs ++ [head xs])]

buildG :: [Vertex] -> [Int] -> [Edge]
buildG vs es =
    zipWith createEdge vs es

sumEdge :: Edge -> Int
sumEdge (Edge a b c) =
    a + b + c

validG :: [Edge] -> Bool
validG es =
    let sums = map sumEdge es
     in all (== head sums) sums

fiveGons :: [Edge] -> Int
fiveGons e =
    read $ graphToStr e

makeOrderedEdgeList :: [[Int]]
makeOrderedEdgeList =
    map (6:) (permutations [7..10])

genGraphs :: [[Edge]]
genGraphs =
    [x | vs <- permutations [1..5], es <- makeOrderedEdgeList, let x = buildG (buildVertexL vs) es, validG x]

main =
    print $ graphToStr $ maximumBy (comparing fiveGons) (filter validG genGraphs)

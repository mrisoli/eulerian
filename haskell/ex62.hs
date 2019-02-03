import Data.List (sort)
import qualified Data.Map.Strict as Map

findGroup :: Map.Map [Char] [Int] -> Int -> Int
findGroup c i =
    let  cube = i * i * i
         sorted = sort $ show cube
         cubes = Map.insertWith (++) sorted [cube] c
    in case Map.lookup sorted c of
    Nothing -> findGroup cubes (i + 1)
    Just arr -> if length arr == 4 then minimum(cube:arr) else findGroup cubes (i + 1)

main = print $ findGroup Map.empty 1

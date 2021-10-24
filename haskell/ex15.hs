main = print $ foldl paths 1 [1..20]

paths :: Int -> Int -> Int
paths r n = div (r * (20 + n)) n

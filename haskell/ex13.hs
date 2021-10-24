import Data.Char

main = do
    contents <- getContents
    print $ getVal $ sum $ (map getNum (lines contents))


getNum :: String -> Int
getNum n = read (take 13 n) :: Int

getVal :: Int -> String
getVal = (take 10) . show

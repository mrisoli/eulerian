import Data.Char (isLetter)

main = print $ sum $ map countLetters [1..1000]

countLetters :: Int -> Int
countLetters n = length (filter isLetter $ toWords n)

toWords :: Int -> [Char]
toWords 1000 = "one thousand"
toWords n
  | n >= 100 && mod n 100 > 0 = hundredWord (div n 100) ++ "and" ++ toWords (mod n 100)
  | n >= 100 = hundredWord (div n 100)
  | n >= 10 = tensWord n
  | otherwise = numberWord n


hundredWord :: Int -> [Char]
hundredWord n = numberWord n ++ "hundred"

tensWord :: Int -> [Char]
tensWord n
  | n > 19 = tenWord (div n 10) ++ "-" ++ numberWord (mod n 10)
  | n == 19 = "nineteen"
  | n == 18 = "eighteen"
  | n == 17 = "seventeen"
  | n == 16 = "sixteen"
  | n == 15 = "fifteen"
  | n == 14 = "fourteen"
  | n == 13 = "thirteen"
  | n == 12 = "twelve"
  | n == 11 = "eleven"
  | n == 10 = "ten"

numberWord :: Int -> [Char]
numberWord 0 = ""
numberWord 1 = "one"
numberWord 2 = "two"
numberWord 3 = "three"
numberWord 4 = "four"
numberWord 5 = "five"
numberWord 6 = "six"
numberWord 7 = "seven"
numberWord 8 = "eight"
numberWord 9 = "nine"

tenWord :: Int -> [Char]
tenWord 2 = "twenty"
tenWord 3 = "thirty"
tenWord 4 = "forty"
tenWord 5 = "fifty"
tenWord 6 = "sixty"
tenWord 7 = "seventy"
tenWord 8 = "eighty"
tenWord 9 = "ninety"

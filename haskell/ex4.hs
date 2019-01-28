import Data.Numbers (isPalindrome)
main = print $ maximum [x * y | x <-[100..999], y <-[100..999], isPalindrome(x*y)]

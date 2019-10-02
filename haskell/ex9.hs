solve n = print $ maximum [a*b*c | a <- [1..(quot n 2)], let b = quot (n*n - 2*n*a) (2*n - 2*a), let c=1000-a-b, a^2+b^2 == c^2]

main = solve 1000

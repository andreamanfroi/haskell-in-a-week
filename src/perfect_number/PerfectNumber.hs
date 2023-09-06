-- A number is called `perfect` if it is the sum of its divisors except for itself
-- For example: 6 is perfect as: 1+2+3 = 6
-- or 28: 1 + 2 + 4 + 7 + 14

module PerfectNumber (findPerfectsInRange) where

findPerfectsInRange :: [Integer] -> [Integer]
findPerfectsInRange [] = []
findPerfectsInRange (x:xs) = filter isPerfectNumber (x:xs)

isPerfectNumber :: Integer -> Bool
isPerfectNumber n = sum ( findDivisors n ) == n

findDivisors :: Integer -> [Integer]
findDivisors number = [x | x <- [1..(number `div` 2)], number `mod` x == 0]


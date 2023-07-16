-- A number is called `perfect` if it is the sum of its divisors except for itself
-- For example: 6 is perfect as: 1+2+3 = 6
-- or 28: 1 + 2 + 4 + 7 + 14


findPerfects :: [Integer] -> [Integer]
findPerfects [] = []
findPerfects (x:xs) = filter isPerfectNumber (x:xs)

isPerfectNumber :: Integer -> Bool
isPerfectNumber n = sum ( findDivisors n ) == n


findDivisors :: Integer -> [Integer]
findDivisors (number :: Integer) =   filter (\x-> number `mod` x == 0)  [1..(number `div` 2)]


main :: IO ()
main = do
    print "Finding all the perfect numbers from 0 to 100000..."
    let y = findPerfects [4,5..10000]
    print y


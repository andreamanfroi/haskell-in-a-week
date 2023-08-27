{-
    Greatest common divisor of two numbers is the highest integer divisor
-}

import Data.List (intersect)

greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor a b = last $ intersect (allDivs a) (allDivs b) 

allDivs :: Int -> [Int]
allDivs x = [i | i <- [1..x], x `mod` i == 0]


greatestCommonDivisor' :: Int -> Int -> Int
greatestCommonDivisor' x 0 = x
greatestCommonDivisor' x y | x > y = greatestCommonDivisor' y  (x `mod` y)
                           | x < y = greatestCommonDivisor' x  (y `mod` x) 

main :: IO ()
main = do
    let result = greatestCommonDivisor' 12 8
    putStrLn $ "Greatest Common divisor of two numbers is " ++ show result
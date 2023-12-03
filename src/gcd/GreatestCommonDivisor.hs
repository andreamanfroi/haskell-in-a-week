{-
    Greatest common divisor of two numbers is the highest integer divisor
-}


module GreatestCommonDivisor (greatestCommonDivisor, greatestCommonDivisor') where

import Data.List (intersect)

greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor a b = last $ intersect x y
                            where x = allDivs a
                                  y = allDivs b

greatestCommonDivisor' :: Int -> Int -> Int
greatestCommonDivisor' x 0 = x
greatestCommonDivisor' x y | x >= y = greatestCommonDivisor' y (x `mod` y)
greatestCommonDivisor' x y = greatestCommonDivisor' x (y `mod` x)


allDivs :: Int -> [Int]
allDivs x = [i | i <- [1..x], x `mod` i == 0]
{-
    Greatest common divisor of two numbers is the highest integer divisor
-}


module GreatestCommonDivisor (mainGreatestCommonDivisor, greatestCommonDivisor, greatestCommonDivisor') where

import Data.List (intersect)
import Test.QuickCheck

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

-- Property function to test greatestCommonDivisor
prop_greatestCommonDivisor :: Int -> Int -> Property
prop_greatestCommonDivisor a b =
  a /= 0 && b /= 0 ==> gcd a b `divides` a && gcd a b `divides` b
  where
        divides d n = n `mod` d == 0

-- Run tests
-- Run tests
mainGreatestCommonDivisor :: IO ()
mainGreatestCommonDivisor = quickCheck prop_greatestCommonDivisor
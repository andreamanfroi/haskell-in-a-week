
module QuickCheckExample (mainQuickCheck) where

import Test.QuickCheck

-- Function to test
reverseTwice :: [a] -> [a]
reverseTwice xs = reverse (reverse xs)

-- Property: Reversing a list twice should yield the original list
prop_reverseTwice :: [Int] -> Bool
prop_reverseTwice xs = reverseTwice xs == xs

-- Specify Arbitrary instance for custom data type
--instance Arbitrary a => Arbitrary [a] where
--  arbitrary = listOf arbitrary

-- Run tests
mainQuickCheck :: IO ()
mainQuickCheck = quickCheck prop_reverseTwice
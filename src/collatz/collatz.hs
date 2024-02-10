module Collatz (mainCollatz, collatz, collatz') where

import Test.QuickCheck

collatz:: Int -> Int -> Int
collatz 1 steps = steps
collatz number steps
            | number == 0 = 0
            | number < 0 = error "collatz can be called only for positive numbers"
            | even number = collatz (number `div` 2) (steps + 1)
            | odd number = collatz (number*3 + 1) (steps + 1)

collatz' :: Int -> [Int]
collatz' n = collatzHelper n []
  where
    collatzHelper 1 acc = reverse (1 : acc)
    collatzHelper x acc
                  | even x    = collatzHelper (x `div` 2) (x : acc)
                  | otherwise = collatzHelper (3 * x + 1) (x : acc)

-- Property to test the collatz function
prop_collatz :: Property
prop_collatz =
    forAll (arbitrary `suchThat` (> 0)) $ \n ->
        collatz n 0 >= 0

mainCollatz :: IO ()
mainCollatz = quickCheck prop_collatz
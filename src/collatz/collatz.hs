module Collatz (collatz, collatz') where

collatz:: Int -> Int -> Int
collatz 1 steps = steps 
collatz number steps
            | number == 0 = 0
            | number < 0 = error "collatz can be called only for positive numbers"
            | even number = collatz (number `div` 2) (steps + 1) 
            | (not $ even number) = collatz (number*3 + 1) (steps + 1)

collatz' :: Int -> [Int]
collatz' n = collatzHelper n []
  where
    collatzHelper 1 acc = reverse (1 : acc)
    collatzHelper x acc
                  | even x    = collatzHelper (x `div` 2) (x : acc)
                  | otherwise = collatzHelper (3 * x + 1) (x : acc)
            

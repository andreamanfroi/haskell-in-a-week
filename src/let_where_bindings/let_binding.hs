-- example of "let" binding within a function.
-- In the "let" condition, you can declare and compute some variables
-- which are then used to resolve the function declared the "in" condition
isInRange :: Int -> Int -> Int -> Bool
isInRange min max x = let isLowerBounded = min <= x
                          isUpperBounded = max >= x
                      in isLowerBounded && isUpperBounded

main = do
       putStrLn (show (isInRange 1 10 3))
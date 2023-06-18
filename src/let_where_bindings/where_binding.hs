-- example of "where" binding within a function.
-- In the "where" condition, you can declare and compute some variables
-- which are then used to resolve the function in the main condition
isInRange :: Int -> Int -> Int -> Bool
isInRange min max x = isLowerBounded && isUpperBounded
                      where isUpperBounded = max >= x
                            isLowerBounded = min <= x

main = do
       putStrLn (show (isInRange 1 10 3))
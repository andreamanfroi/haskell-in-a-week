
module WhereBinding (isInRange) where
-- example of "where" binding within a function.
-- In the "where" condition, you can declare and compute some variables
-- which are then used to resolve the function in the main condition
isInRange :: Int -> Int -> Int -> Bool
isInRange mini maxi x = isLowerBounded && isUpperBounded
                      where isUpperBounded = maxi >= x
                            isLowerBounded = mini <= x

-- Example of "let" binding within a function.
-- In the "let" condition, you can declare and compute some variables
-- which are then used to resolve the function declared the "in" condition
isInRange :: Int -> Int -> Int -> Bool
isInRange mini maxi x = let isLowerBounded = mini <= x
                            isUpperBounded = maxi >= x
                        in  isLowerBounded && isUpperBounded

main :: IO ()
main = do
       print (isInRange 1 10 3)
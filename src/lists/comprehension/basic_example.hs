-- List comprehension is a powerful construct in Haskell,
-- it works pretty much like this: you give in an operator function
-- then you specify the list to apply the single element of the function to.
-- Eventually, you can specify one or more predicates to filter out some elements.(*)
-- Multiple lists can be passed in for evaluation, check the perfect_squares example
filterAndTransform :: [Int] -> [Int]
filterAndTransform xs = [x * 2 | x <- xs, x `mod` 3 == 0]

main :: IO ()
main = do 
     let x = filterAndTransform [1..100]
     print x 
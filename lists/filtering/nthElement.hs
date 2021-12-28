-- PROBLEM:
-- Find the n-th element of a list, such as that
-- nthElement 2 [1, 25, 32, 41, 57] is 25
-- nthElement 4 "hello mates" is l

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
import Data.List
-- 1. Using the !! operator
nthElement :: [a] -> Int -> a
nthElement list i = list !! (i-1)

-- 2. In a recursive way
nthElement' :: [a] -> Int -> a
nthElement' (x:_) 1  = x
nthElement' [] _     = error "Index out of bounds"
nthElement' (_:xs) k
  | k < 1           = error "Index out of bounds"
  | otherwise       = nthElement' xs (k - 1)


main = do
       putStrLn "The second element of [1, 25, 32, 41, 57] is:"
       print $ nthElement [1, 25, 32, 41, 57] 2
       putStrLn "The fourth element of 'hello mates' is:"
       print $ nthElement "hello mates" 4
       putStrLn "The second element of [1, 25, 32, 41, 57] is:"
       print $ nthElement' [1, 25, 32, 41, 57] 2
       putStrLn "The fourth element of 'hello mates' is:"
       print $ nthElement' "hello mates" 4
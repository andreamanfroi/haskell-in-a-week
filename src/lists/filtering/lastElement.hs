-- PROBLEM:
-- Find the last element of a list, such as that
-- lastFunction [1,2,3,4,5] is 5
-- lastFunction "hello mates" is s

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------


import Data.List

-- 1. Recursive solution.
--    When the list is empty, then we can return an error.
--    When there is only one element, then we return the element itself.
--    When we have more than one element, we recursively call the myLast function on the tail.
myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

-- 2. Using foldr1 from Data.List and the const function on the identity function
myLast' :: [a] -> a
myLast' = foldr1 (const id)

-- 3. Using foldr1 from Data.List and the flip function on the const function
myLast'' :: [a] -> a
myLast'' = foldr1 (flip const)

-- 4. Combining a call to head of the reversed list!
myLast''' :: [a] -> a
myLast''' xs = head (reverse xs)
-- can be equivalently written as myLast''' = head . reverse

-- 5. Mmmmmhhhh.....
myLast'''' :: [a] -> a
myLast'''' = foldl1 (curry snd)

-- 6. Using built-in 'last' function from Prelude
myLast''''' :: [a] -> a
myLast''''' = last

main = do
       putStrLn "The last element of [1..10] is:"
       print $ myLast [1..10]
       print $ myLast "hello mates"
       print $ myLast' [1..10]
       print $ myLast' "hello mates"
       print $ myLast'' [1..10]
       print $ myLast'' "hello mates"
       print $ myLast''' [1..10]
       print $ myLast''' "hello mates"
       print $ myLast'''' [1..10]
       print $ myLast'''' "hello mates"
       print $ myLast''''' [1..10]
       print $ myLast''''' "hello mates"
-- PROBLEM:
-- Find the last but one element of a list, such as that
-- lastButOne [1,2 3, 4, 5] is 4
-- lastButOne "hello mate" is t

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

-- 1. Declarative/Pattern Matching way.
--    When the list is empty, then we can return an error,
--    as well as when the list contains only one element.
--    In the base case of two elements, we grab the first in order.
--    When more than two elements, we can recursively call the function on the last two elements,
--    disregarding whatever comes first in the list.
lastButOne :: [a] -> a
lastButOne [] = error "No but to end for empty lists!"
lastButOne [x] = error "Just 1 element!"
lastButOne [x1,x2] = x1
lastButOne (_:x1:xs) = lastButOne (x1:xs)

-- 2. Using the combination of last and init.
--    This solution is quite unsafe as per documentation:
--    init: Return all the elements of a list except the last one.
--          The list must be non-empty.
lastButOne' :: [a] -> a
lastButOne' = last . init

-- 3. Reversing the list and getting the head of the tail :)
--    [1,2,3,4] -> reverse [1,2,3,4] -> [4,3,2,1]
--    tail [4,3,2,1] -> [3,2,1]
--    head [3,2,1] -> 3
lastButOne'' :: [a] -> a
lastButOne'' = head . tail . reverse

-- 4. Using list indexing
lastButOne''' :: [a] -> a
lastButOne''' xs = reverse xs !! 1

main :: IO ()
main = do
       putStrLn "The but last element of [1..10] is:"
       print $ lastButOne [1..10]
       print $ lastButOne "hello mate"
       print $ lastButOne' [1..10]
       print $ lastButOne' "hello mate"
       print $ lastButOne'' [1..10]
       print $ lastButOne'' "hello mate"
       print $ lastButOne''' [1..10]
       print $ lastButOne''' "hello mate"
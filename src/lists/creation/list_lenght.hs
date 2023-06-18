-- PROBLEM:
-- Find the number of elements of a list, such as that:
-- myLength [1,2 3,4,5] is 5
-- myLength "hello mate" is 10

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------


-- 1. Using built-in function (can omit xs argument!)
myLength :: [a] -> Int
myLength xs = length xs

-- 2. Using an accumulator
myLength' :: [a] -> Int
myLength' list = myLength_acc list 0
                 where
                 myLength_acc [] n = n
                 myLength_acc (_:xs) n = myLength_acc xs (n + 1)

-- 3. Mapping all elements to 1 and then sum them all together :)
myLength'' :: [a] -> Int
myLength'' = sum . map (\_->1)

main = do
       putStrLn "The length of [1,2,3,4,5] is :"
       print $ myLength [1,2,3,4,5]
       putStrLn "The length of `hello mate` is :"
       print $ myLength "hello mate"
       putStrLn "The length of [1,2,3,4,5] is :"
       print $ myLength' [1,2,3,4,5]
       putStrLn "The length of `hello mate` is :"
       print $ myLength' "hello mate"
       putStrLn "The length of [1,2,3,4,5] is :"
       print $ myLength'' [1,2,3,4,5]
       putStrLn "The length of `hello mate` is :"
       print $ myLength'' "hello mate"
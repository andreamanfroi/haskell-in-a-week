-- PROBLEM:
-- Reverse the order of a list of elements, such as that
-- myReverse [1,2,3,4] = [4,3,2,1]
-- myReverse "hello" = "olleh"

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------


import Data.List

-- 1. Recursive
myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse [x1,x2] = [x2,x1]
myReverse (x:xs) = myReverse xs ++ [x]

-- 2. Computationally efficient
myReverse' :: [a] -> [a]
myReverse' list = myReverse'' list []
  where
    myReverse'' [] reversed     = reversed
    myReverse'' (x:xs) reversed = myReverse'' xs (x:reversed)

-- 3. A very concise method!
myReverse''' :: [a] -> [a]
myReverse''' xs = foldr (\x fId empty -> fId (x : empty)) id xs []

main = do
       putStrLn "You can easily reverse list with the reverse function"
       let arr = ['h','e','l','l','o']
       print $ reverse arr
       let arr = [1,2,3,4]
       print $ reverse arr
       putStrLn "Or revert using a recursive function"
       let arr = ['h','e','l','l','o']
       print $ myReverse' arr
       let arr = [1,2,3,4]
       print $ myReverse' arr
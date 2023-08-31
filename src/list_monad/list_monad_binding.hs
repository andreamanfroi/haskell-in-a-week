
-- Using bind (>>=) to double each element in a list
-- doubleList :: [Int] -> [Int]
-- doubleList xs = xs >>= (\x -> [x, 2*x])

-- doubleList' :: [Int] -> [Int]
-- doubleList' [] = []
-- doubleList' [x] = double x 
-- doubleList' (x:xs) = double x ++ doubleList' xs
        
-- double x = [x, 2*x]



-- Using bind (>>=) to combine two lists element-wise
combineLists :: [a] -> [b] -> [(a, b)]
combineLists xs ys = xs >>= (\x -> ys >>= (\y -> [(x, y)]))



main :: IO ()
main = do
    let x = [1,2,3]
    let y = [4,5,6]
    print $ doubleList' x 

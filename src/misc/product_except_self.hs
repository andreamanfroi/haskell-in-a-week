

productExceptSelf :: [Int] -> [Int]
productExceptSelf [] = []
productExceptSelf arr = map (\n -> product' (filter (/=n) arr)) arr


product' :: [Int] -> Int
product' [] = 0
product' x = foldl (*) 1 x 

productExceptSelf' :: [Int] -> [Int]
productExceptSelf' xs = zipWith (*) leftProducts rightProducts
  where
    leftProducts = scanl (*) 1 xs
    rightProducts = tail (scanr (*) 1 xs)


main :: IO ()
main = do
    let arr = [1,2,3,4]
    print $ productExceptSelf arr
    print $ productExceptSelf' arr
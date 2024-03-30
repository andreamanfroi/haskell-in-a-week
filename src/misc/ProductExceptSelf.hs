
module ProductExceptSelf (productExceptSelf, productExceptSelf') where

productExceptSelf :: [Int] -> [Int]
productExceptSelf [] = []
productExceptSelf arr = map (\n -> product' (filter (/=n) arr)) arr


product' :: [Int] -> Int
product' [] = 0
product' x = product x

productExceptSelf' :: [Int] -> [Int]
productExceptSelf' xs = zipWith (*) leftProducts rightProducts
  where
    leftProducts = scanl (*) 1 xs
    rightProducts = tail (scanr (*) 1 xs)
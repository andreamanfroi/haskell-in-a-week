filterAndTransform :: [Int] -> [Int]
filterAndTransform xs = [x * 2 | x <- xs, x `mod` 3 == 0]

main :: IO ()
main = do 
     let x = filterAndTransform [1..100]
     print x 

runningSum :: [Int] -> [Int]
runningSum xs = go 0 xs
  where
    go _ [] = []  -- Base case: empty list
    go cumulativeSum (x:xs) = (cumulativeSum + x) : go (cumulativeSum + x) xs


main :: IO ()
main = do
    let arr = [1,2,3]
    print $ runningSum arr

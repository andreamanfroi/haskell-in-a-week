
module RunningSum (runningSum) where

runningSum :: [Int] -> [Int]
runningSum = go 0
  where
    go _ [] = []  -- Base case: empty list
    go cumulativeSum (x:xl) = (cumulativeSum + x) : go (cumulativeSum + x) xl
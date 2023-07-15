import Data.List (nub, sort)

calculateEnergy :: [Int] -> Int -> Int
calculateEnergy [] _ = 0
calculateEnergy baseValues level = sum $ nub $ sort (concatMap (`multiplesOf` level) baseValues)

multiplesOf :: Int -> Int -> [Int]
multiplesOf number limit = filter (\x -> x `mod` number == 0) [1..limit-1]


main :: IO ()
main = do
    -- let x = calculateEnergy level baseValues
    let x = calculateEnergy [3,5] 20
    print x
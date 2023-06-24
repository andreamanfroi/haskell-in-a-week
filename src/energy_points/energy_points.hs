import Data.List (nub, sort)

calculateEnergy :: [Int] -> Int -> Int
calculateEnergy [] _ = 0
calculateEnergy baseValues level = sum $ nub $ sort(concat (map (\x-> multiplesOf x level) baseValues))

multiplesOf :: Int -> Int -> [Int]
multiplesOf number limit = filter (\x -> x `mod` number == 0) [1..limit-1]


main :: IO ()
main = do
    let baseValues = []
    let level = 20
    -- let x = calculateEnergy level baseValues
    let x = calculateEnergy [3,5] 20
    print x

perfectSquares :: [Int] -> [Int]
perfectSquares x = filter (isPerfectSquare) x
    where
        isPerfectSquare :: Int -> Bool
        isPerfectSquare x = decimalPart (root x) == 0.0
        root :: Int -> Double
        root x = sqrt (fromIntegral x)
        decimalPart :: Double -> Double
        decimalPart x = x - fromIntegral (floor x) 

main :: IO ()
main = do
    let arr = [1,4,5,9,16,27]
    print $ perfectSquares arr
    -- print $ onlyPerfectSquares arr
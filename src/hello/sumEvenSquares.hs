

sumEvenSquares:: [Int] -> Int
sumEvenSquares x = sum $ map (^2) (filter (even) x)


main :: IO ()
main = do
    let x = sumEvenSquares [1,2,3,4,5]
    print x
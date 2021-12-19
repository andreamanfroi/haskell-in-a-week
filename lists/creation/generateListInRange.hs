generateAsc :: Int -> Int -> [Int]
generateAsc lowerBound upperBound
            | lowerBound > upperBound = []
            | lowerBound == upperBound = [lowerBound]
            | lowerBound < upperBound = lowerBound : generateAsc (lowerBound + 1) upperBound

main = do
       let result = generateAsc 1 10
       putStrLn ("The list is: " ++ (show result))
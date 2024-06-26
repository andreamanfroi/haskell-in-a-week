{-
    Print the factorial number given an input number > 0
-}

import Text.Read (readMaybe)

factorial :: Int -> Int
factorial 0 = 1
factorial x | x > 0 = x * factorial (x - 1)


factorial' :: Int -> Int
factorial' n = go n 1
    where
        go 0 acc = acc
        go x acc | x > 0 = go (x - 1) (x * acc)

main :: IO ()
main = do
    putStrLn "FactorialCalc - Please insert a non-negative number..."
    input <- getLine
    let parsedInput = readMaybe input :: Maybe Int
    case parsedInput of
        Just n -> print (factorial n)
        Nothing -> putStrLn "Invalid input. Please enter a valid integer."
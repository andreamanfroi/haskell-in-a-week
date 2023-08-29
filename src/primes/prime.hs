
{- 
    A prime number can only be perfectly divided 1 and itself 
-}

import Text.Read (readMaybe)

prime :: Int -> [Int]
prime x = [ y | y <- [2..(x-1)] , x `mod` y == 0]


main :: IO ()
main = do
    putStrLn "FactorialCalc - Please insert a non-negative number..."
    input <- getLine
    let parsedInput = readMaybe input :: Maybe Int
    case parsedInput of
        Just n -> print (prime n)
        Nothing -> putStrLn "Invalid input. Please enter a valid integer."
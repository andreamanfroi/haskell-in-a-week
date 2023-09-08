import Text.Read (readMaybe)


-- Define a data type for operations
data Operation = Add | Subtract | Multiply | Divide | Exit

-- Function to perform the operation
performOperation :: Operation -> Int -> Int -> Maybe Double
performOperation Add a b = Just $ fromIntegral a + fromIntegral b
performOperation Subtract a b = Just $ fromIntegral a - fromIntegral b
performOperation Multiply a b = Just $ fromIntegral a * fromIntegral b
performOperation Divide a b
    | b == 0 = Nothing  -- Division by zero check
    | otherwise = Just $ fromIntegral a / fromIntegral b
performOperation Exit _ _ = Nothing

-- Function to read an operation choice from the user
readOperationChoice :: IO Operation
readOperationChoice = do
    putStrLn "Select the desired operation:"
    putStrLn "1. Add"
    putStrLn "2. Subtract"
    putStrLn "3. Multiply"
    putStrLn "4. Divide"
    putStrLn "5. Exit"
    choice <- getLine
    case choice of
        "1" -> return Add
        "2" -> return Subtract
        "3" -> return Multiply
        "4" -> return Divide
        "5" -> return Exit
        _ -> do
            putStrLn "Invalid choice, please try again."
            readOperationChoice

-- Main program loop
mainLoop :: IO ()
mainLoop = do
    operation <- readOperationChoice
    case operation of
        Exit -> return ()
        _ -> do
            putStrLn "Input the first operand:"
            operand1 <- getLine
            putStrLn "Input the second operand:"
            operand2 <- getLine
            case (readMaybe operand1, readMaybe operand2) of
                (Just op1, Just op2) -> do
                    case performOperation operation op1 op2 of
                        Just result -> putStrLn ("Result: " ++ show result)
                        Nothing -> putStrLn "Error: Division by zero"
                    mainLoop
                _ -> do
                    putStrLn "Invalid operands, please enter valid numbers."
                    mainLoop

main :: IO ()
main = do
    putStrLn "Welcome to Haskell Calculator!"
    mainLoop
    putStrLn "Goodbye!"

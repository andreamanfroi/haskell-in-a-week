import Data.Char(toUpper)

main :: IO ()
main = do
       putStrLn "What's your first name?"
       firstName <- getLine
       putStrLn "What's your last name?"
       lastName <- getLine
       let upperFirstName = map toUpper firstName
           upperLastName = map toUpper lastName
       putStrLn $ "Hey " ++ upperFirstName ++ " " ++ upperLastName ++ ", how are you?"
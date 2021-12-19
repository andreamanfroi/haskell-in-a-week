import Data.List
main = do
       let users = [("Saurabh", 35), ("John", 45), ("Doe", -5)]
       putStrLn (show users)
       case (find (\(_, age) -> age < 1 || age > 100) users) of
        Nothing -> Right users
        --Just (name, age) -> Left $ name <> " seems to have an incorrect age: " <> show age
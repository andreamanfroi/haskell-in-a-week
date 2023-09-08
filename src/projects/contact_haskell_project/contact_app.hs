import Control.Monad.State
import Control.Monad.IO.Class (MonadIO(liftIO))

data Person = Person 
    { firstName :: String
    , lastName :: String
    } deriving (Show)


data Address = Address 
    { addressLine1 :: String
    , addressLine2 :: String
    , town:: String 
    , postCode :: String
    } deriving (Show)


data ContactDetail = ContactDetail
    { phoneNumber :: [String]
    , emailAddress :: [String]
    } deriving (Show)


data Contact = Contact 
    { person::Person
    , address::Address
    , contactDetail:: ContactDetail
    } deriving (Show)


type ContactList = [Contact]


promptInput :: String -> IO()
promptInput s = do
    putStrLn s

-- The main program loop
mainLoop :: StateT ContactList IO ()
mainLoop = do
    liftIO $ putStrLn "1. Add contact"
    liftIO $ putStrLn "2. List contacts"
    liftIO $ putStrLn "3. Amend contact"
    liftIO $ putStrLn "4. Delete contact"
    liftIO $ putStrLn "5. Free-text search"
    liftIO $ putStrLn "6. Quit"
    choice <- liftIO getLine
    case choice of
        "1" -> do
            liftIO $ promptInput "Add a contact:"
            liftIO $ promptInput "First Name:"
            firstName <- liftIO getLine
            liftIO $ promptInput "Last Name:"
            lastName <- liftIO getLine
            liftIO $ promptInput "Address Line 1:"
            address1 <- liftIO getLine
            liftIO $ promptInput "Address Line 2:"
            address2 <- liftIO getLine
            liftIO $ promptInput "Town:"
            town <- liftIO getLine
            liftIO $ promptInput "Post Code 1:"
            postCode <- liftIO getLine
            liftIO $ promptInput "Phone numbers (comma separated):"
            phoneNumbers <- liftIO getLine
            liftIO $ promptInput "Emails (comma separated):"
            emails <- liftIO getLine
            -- modify (addTask desc)
            mainLoop
        "2" -> do
            -- contacts <- get
            -- liftIO $ listTasks tasks
            mainLoop
        "3" -> do
            -- liftIO $ putStrLn "Enter task index to complete:"
            -- index <- liftIO readLn
            -- modify (completeTask index)
            mainLoop
        "4" -> do
            -- liftIO $ putStrLn "Enter task index to complete:"
            -- index <- liftIO readLn
            -- modify (completeTask index)
            mainLoop
        "5" -> do
            -- liftIO $ putStrLn "Enter task index to complete:"
            -- index <- liftIO readLn
            -- modify (completeTask index)
            mainLoop
        "6" -> return ()
        _ -> do
            liftIO $ putStrLn "Invalid choice"
            mainLoop


main :: IO ()
main = do
    putStrLn "Welcome to ContactHaskell App!"
    finalState <- execStateT mainLoop []
    putStrLn "Goodbye!"
    --print finalState
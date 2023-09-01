import Control.Monad.State

data Task = Task
    { description :: String
    , completed :: Bool
    } deriving (Show)

type TaskList = [Task]

-- Function to add a task to the list
addTask :: String -> TaskList -> TaskList
addTask desc tasks = tasks ++ [Task desc False]

-- Function to mark a task as completed
completeTask :: Int -> TaskList -> TaskList
completeTask index tasks = map updateTask (zip [0..] tasks)
  where
    updateTask (i, task)
        | i == index = task { completed = True }
        | otherwise = task

-- Function to list tasks
listTasks :: TaskList -> IO ()
listTasks tasks = mapM_ putStrLn (zipWith formatTask [0..] tasks)
  where
    formatTask i task = show i ++ ". [" ++ mark ++ "] " ++ description task
      where
        mark = if completed task then "x" else " "

-- The main program loop
mainLoop :: StateT TaskList IO ()
mainLoop = do
    liftIO $ putStrLn "1. Add task"
    liftIO $ putStrLn "2. List tasks"
    liftIO $ putStrLn "3. Complete task"
    liftIO $ putStrLn "4. Quit"
    choice <- liftIO $ getLine
    case choice of
        "1" -> do
            liftIO $ putStrLn "Enter task description:"
            desc <- liftIO $ getLine
            modify (addTask desc)
            mainLoop
        "2" -> do
            tasks <- get
            liftIO $ listTasks tasks
            mainLoop
        "3" -> do
            liftIO $ putStrLn "Enter task index to complete:"
            index <- liftIO $ readLn
            modify (completeTask index)
            mainLoop
        "4" -> return ()
        _ -> do
            liftIO $ putStrLn "Invalid choice"
            mainLoop

main :: IO ()
main = do
    putStrLn "Welcome to Task Manager!"
    finalState <- execStateT mainLoop []
    putStrLn "Goodbye!"
    print finalState

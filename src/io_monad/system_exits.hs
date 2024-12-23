

import System.Environment
import System.Exit
import System.IO

main :: IO ()
main = do
    args <- getArgs
    putStrLn ("Command-line arguments: " ++ show args)
    hFlush stdout  -- Flush the standard output buffer
    if args == ["OK"]
        then do
            putStrLn "success!"
            exitSuccess
        else do
            putStrLn "failure!"
            exitWith (ExitFailure 1)
            
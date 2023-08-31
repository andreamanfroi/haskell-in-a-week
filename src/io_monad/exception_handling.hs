

import Control.Exception

main :: IO ()
main = do
    result <- try (readFile "nonexistent.txt") :: IO (Either IOException String)
    case result of
        Left ex -> putStrLn ("Error: " ++ show ex)
        Right contents -> putStrLn ("File contents: " ++ contents)

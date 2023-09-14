
{-
    Generic greetings :)
-}
module Hello (hello, helloUser)

hello :: IO ()
hello = putStrLn "Welcome to Haskell!"

helloUser :: String -> IO ()
helloUser user = putStrLn "Welcome to Haskell" <> user
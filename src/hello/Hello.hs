
{-
    Generic greetings :)
-}
module Hello (hello, helloUser) where

hello :: IO ()
hello = putStrLn "Welcome to Haskell!"

helloUser :: String -> IO ()
helloUser user = print $ "Hello" <> " " <> user
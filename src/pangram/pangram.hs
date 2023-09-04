module Pangram (pangram) where

pangram :: String -> Bool
pangram x = all (`isPresentAtLeastOnce` x) ['a'..'z']

isPresentAtLeastOnce :: Eq a => a -> [a] -> Bool
isPresentAtLeastOnce x xs = x `elem` xs

-- main :: IO ()
-- main = do
--     let word = "the quick brown fox jumps over the lazy dog"
--     -- let word = "definitely not a pangram word"
--     print $ pangram word
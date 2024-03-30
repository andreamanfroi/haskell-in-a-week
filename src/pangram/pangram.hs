module Pangram (pangram) where

pangram :: String -> Bool
pangram x = all (`isPresentAtLeastOnce` x) ['a'..'z']

isPresentAtLeastOnce :: Eq a => a -> [a] -> Bool
isPresentAtLeastOnce x xs = x `elem` xs
{- Pangram is a word containing all the letters of the English alphabet only once -}


pangram :: String -> Bool
pangram x = all (==True) (map (\y -> isPresentAtLeastOnce y x) ['a'..'z'] )

isPresentAtLeastOnce :: Eq a => a -> [a] -> Bool
isPresentAtLeastOnce x xs = length (filter (== x) xs) >= 1

main :: IO ()
main = do
    let word = "the quick brown fox jumps over the lazy dog"
    -- let word = "definitely not a pangram word"
    print $ pangram word
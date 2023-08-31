import Data.Map (Map, insertWith, empty, toList)

uniqueCharacters :: [String] -> String
uniqueCharacters xs = removeDuplicates $ concat xs

removeDuplicates :: [Char] -> [Char]
removeDuplicates xs = removeDup xs []
  where
    removeDup [] _ = []
    removeDup (x:xs) seen
      | x `elem` seen = removeDup xs seen
      | otherwise = x : removeDup xs (x:seen)



main :: IO ()
main = do
    let arr = ["hello", "world", "haskell"]
    print $ uniqueCharacters arr -- expected "helowrdask"
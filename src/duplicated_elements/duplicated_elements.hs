import Data.List (foldl')

findDuplicates :: [Char] -> [Char]
findDuplicates x =  map (\(x,_) -> x ) (filter (\(x,y) -> y > 1) (reduceTuples (map (\x -> (x,1)) x)))

reduceTuples :: [(Char, Int)] -> [(Char, Int)]
reduceTuples  = foldl' combineTuples [] 
  where
    combineTuples :: [(Char, Int)] -> (Char, Int) -> [(Char, Int)]
    combineTuples acc (key, value) =
      let existingValue = lookup key acc
          updatedValue = case existingValue of
            Just v -> v + value
            Nothing -> value
      in case existingValue of
        Just _ -> (key, updatedValue) : filter (\(k, _) -> k /= key) acc
        Nothing -> (key, updatedValue) : acc


main :: IO ()
main = do 
    let list = "abcabcfdfsdzyyulkjmptptpr"
    print list
    let dups = findDuplicates list
    print dups
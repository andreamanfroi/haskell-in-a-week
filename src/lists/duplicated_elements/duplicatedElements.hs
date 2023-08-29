import Data.Map (Map, insertWith, empty, toList)

duplicates :: [Int] -> [Int]
duplicates xs = map fst $ filter (\(_, count) -> count > 1) counts
  where
    counts :: [(Int, Int)]
    counts = toList $ foldr insertWithIncrement empty (zip xs (repeat 1))
    insertWithIncrement :: (Int, Int) -> Map Int Int -> Map Int Int
    insertWithIncrement (x, _) = insertWith (+) x 1


main :: IO ()
main = do
    let x = [1, 2, 2, 3, 4, 3, 5]
    let res = duplicates x
    print $ res
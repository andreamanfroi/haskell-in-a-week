
-- a word is `isogram` if no letter is repeated twice
import Data.List(group, sort)

-- | uncomment for `isogram2`
-- import Data.List(nub)

isogram :: String -> Bool
isogram str = all (\x-> length x == 1)  (group (sort str))

-- isogram2 :: String -> Bool
-- isogram2 str = length (nub str) == length str


main :: IO ()
main = do
    putStrLn "Type a word and check if it's an isogram"
    s <- getLine
    print $ isogram s



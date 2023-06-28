
-- a word is isogram if no letter is repeated twie
import Data.List

isogram :: String -> Bool
isogram str = all (\x-> length x == 1)  (group (sort str))

main :: IO ()
main = do
    putStrLn "Type a word and check if it's an isogram"
    s <- getLine
    print $ isogram s
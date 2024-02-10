module Isogram (isogram, mainIsogram) where
-- a word is `isogram` if no letter is repeated twice
import Data.List(group, sort)
import Test.QuickCheck
-- | uncomment for `isogram2`
-- import Data.List(nub)

isogram :: String -> Bool
isogram str = all (\x-> length x == 1)  (group (sort str))

-- isogram2 :: String -> Bool
-- isogram2 str = length (nub str) == length str


mainIsogram :: IO ()
mainIsogram = quickCheck isogram



{- 
    Given two words a and b, find the longest common string for these two words
    E.g.: 
    lcp("wind","windscreen") = "wind"
    lcp("moon","racoon") = "oon"
    lcp("mary","party") = "ar"
    lcp("sun", "polite") = "" (no common chars)
-}

module LongestCommonPrefix (lcp) where

import Data.List (isInfixOf, maximumBy)
import Data.Ord (comparing)

lcp :: String -> String -> String
lcp str1 str2 | length str1 >= length str2 = maximumBy (comparing length) ([x | x <- substrings str2 , x `isInfixOf` str1 && length x >= 2])
              | length str1 < length str2   = maximumBy (comparing length) ([x | x <- substrings str1 , x `isInfixOf` str2 && length x >= 2])

substrings :: String -> [String]
substrings str = [take len (drop i str) | len <- [1..length str], i <- [0..length str - len]]

{- 
   The Atbash cipher is a simple substitution cipher where each letter in the 
   input string is replaced with its corresponding letter in the reverse alphabet. 
   It means that 'a' becomes 'z', 'b' becomes 'y', and so on.
-}

module Atbash (atbash, atbash', atbash'') where

import Data.Maybe (mapMaybe)
import Data.Char (ord)

atbash:: String -> String
atbash = mapMaybe (\c -> lookup c (zip ['a'..'z'] (reverse ['a'..'z'])))  

atbash' :: String -> String
atbash' x = mapMaybe atb x 
        where rev = (zip ['a'..'z'] (reverse ['a'..'z']))
              atb c = lookup c rev

atbash'' :: String -> String
atbash'' = map atb
  where
    atb c
      | 'a' <= c && c <= 'z' = toEnum $ ord 'a' + (ord 'z' - ord c) `mod` 26
      | otherwise = c

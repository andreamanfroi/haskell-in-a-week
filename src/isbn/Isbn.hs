module Isbn (isValid) where
import Data.Char (digitToInt)
import Data.Bifunctor (first)


strip :: String -> String
strip = filter (`notElem` "-")


toDig :: Char -> Int
toDig x = if x == 'X' then 10 else digitToInt x

isValid :: String -> Bool
isValid isbn = sum (zipWith (curry (uncurry (*) . Data.Bifunctor.first toDig)) (strip (reverse isbn)) [1..10]) `mod` 11 == 0
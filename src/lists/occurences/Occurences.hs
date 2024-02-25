module Occurences (countOccurrences, tailing) where

import Data.List (isInfixOf, isPrefixOf, tails)

countOccurrences :: Eq a => [a] -> [a] -> Int
countOccurrences subList list = length [ () | x <- tails list, subList `isPrefixOf` x ]

tailing :: [a] -> [[a]]
tailing = tails

main :: IO ()
main = do
    let str = "abababab"
    let substr = "aba"
    putStrLn $ "Tails '" ++ show (tailing substr)
    putStrLn $ "Number of occurrences of '" ++ substr ++ "' in '" ++ str ++ "': " ++ show (countOccurrences substr str)

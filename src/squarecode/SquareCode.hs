{-# LANGUAGE FlexibleContexts #-}

-- see https://exercism.org/tracks/haskell/exercises/crypto-square

module SquareCode (squareCode, smallestColumnsAndRows) where
import Data.Char (toLower)
import Data.List (transpose)

normalize :: String -> String
normalize = filter (`notElem` ",") . filter (`notElem` " ") . filter (`notElem` ".")

smallestColumnsAndRows :: Int -> (Int, Int)
smallestColumnsAndRows messageLength =
    let c = ceiling (sqrt (fromIntegral messageLength))
        r = ceiling (fromIntegral messageLength / fromIntegral c)
    in (c,r)

splitEveryN :: Int -> String -> [String]
splitEveryN _ [] = []
splitEveryN n xs
    | length xs < n = [xs]
    | otherwise = take n xs : splitEveryN n (drop n xs)

rightPad :: Int -> String -> String
rightPad n str = str ++ replicate (max 0 (n - length str)) ' '

squareCode :: String -> [String]
squareCode s = transpose $ map (rightPad k) (splitEveryN k normalized)
                where normalized = map toLower $ normalize s
                      k = fst (smallestColumnsAndRows $ length normalized)
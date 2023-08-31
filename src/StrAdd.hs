module StrAdd (isAllDigits) where

isAllDigits :: String -> Bool
isAllDigits "" = False
isAllDigits val = all (== True) $ map (\x -> x `elem` ['0','1', '2', '3', '4', '5', '6', '7', '8', '9']) val

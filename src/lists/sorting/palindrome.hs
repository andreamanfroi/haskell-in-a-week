-- PROBLEM:
-- Check if a prompted word is palindrome, i.e. can be read equivalently from left to right
-- and right to left, such as:
-- palindrome "kayak" = True
-- palindrome "hello" = False

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

import Data.List

-- 1. Checking the reverse is the same as the original
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome [x] = True
isPalindrome word = (word == reverse word)

-- 2. Checking the half string is the same as the half reversed
isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' list = take halfLen list == reverse (drop ( halfLen + (len `mod` 2)) list)
                    where
                    len = length list
                    halfLen = len `div` 2

-- 3. Recursively
isPalindromeRecursive :: Eq a => [a] -> Bool
isPalindromeRecursive [] = True
isPalindromeRecursive [_] = True
isPalindromeRecursive (x:xs) = x == last xs && isPalindromeRecursive (init xs)


main = do
       putStrLn "Checking if word is palindrome..."
       putStrLn "Please, insert a word..."
       word <- getLine
       print $ isPalindrome word
       print $ isPalindrome' word
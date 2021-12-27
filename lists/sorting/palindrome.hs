import Data.List

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome [x] = True
isPalindrome word = (word == reverse word)


main = do
       putStrLn "Checking if word is palindrome..."
       putStrLn "Please, insert a word..."
       word <- getLine
       print $ isPalindrome word
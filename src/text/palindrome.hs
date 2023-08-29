{-
    Palindrome string can be read from right to left as from left to right
    E.g: kayak, abba, sos
-}

palindrome :: [Char] -> Bool
palindrome [x] = True
palindrome (x:xs) =  (x:xs) == rev (x:xs)

palindrome' :: [Char] -> Bool
palindrome' [x] = True
palindrome' (x:xs) = x == last xs && palindrome' (init xs)


rev :: [a] -> [a]
rev [] = []
rev [x] = [x]
rev (x:xs) = last xs : rev (init xs) ++ [x]

main :: IO ()
main = do
    let x = "trollo"
    print $ palindrome' x
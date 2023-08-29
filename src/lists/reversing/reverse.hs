{- 
    Reversing lists
-}

rev :: [a] -> [a]
rev [] = []
rev [x] = [x]
rev (x:xs) = last xs : rev (init xs) ++ [x]

main :: IO ()
main = do
    let x = [1,2,3,4,5,6,7,8]
    let y = "hello world"
    let k = [2.0, 3.4, 9.9]
    print $ rev x 
    print $ rev y
    print $ rev k
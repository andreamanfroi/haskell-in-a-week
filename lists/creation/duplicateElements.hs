duplicate :: [Int] -> [Int]
duplicate [] = error "list cannot be empty"
duplicate [x] = [x] ++ [x]
duplicate (x:xs) = duplicate [x] ++ duplicate(xs)

main = do
       putStrLn "duplicating each element of the list..."
       print $ duplicate [34,12,2343,8,9]
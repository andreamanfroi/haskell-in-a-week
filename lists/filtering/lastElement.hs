myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

main = do
       putStrLn "The last element of [1..10] is:"
       print (myLast [1..10])
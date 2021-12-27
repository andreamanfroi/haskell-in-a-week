myButLast :: [a] -> a
myButLast [] = error "No but to end for empty lists!"
myButLast [x] = error "Just 1 element!"
myButLast [x1,x2] = x1
myButLast (_:x1:xs) = myButLast (x1:xs)

main = do
       putStrLn "The but last element of [1..10] is:"
       print (myButLast [1..10])
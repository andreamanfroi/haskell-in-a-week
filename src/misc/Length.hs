-- redefines the length recursively

module Length(length') where 

    length' :: [a] -> Int
    length' [] = 0
    length' (_:xs) = succ (length' xs)
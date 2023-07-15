collatz:: Int -> Int -> Int
collatz 1 steps = steps 
collatz number steps
            | number == 0 = 0
            | number < 0 = error "collatz can be called only for positive numbers"
            | even number = collatz (number `div` 2) (steps + 1) 
            | (not $ even number) = collatz (number*3 + 1) (steps + 1)


main :: IO ()
main = do
    print "Input a number........"
    x <- readLn
    putStrLn $ "It takes " ++ show (collatz x  0) ++ " steps to converge"

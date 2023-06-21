collatz:: Int -> Int -> Int
collatz 1 steps = steps 
collatz number steps = if(isEven number) then collatz (number `div` 2) (steps + 1) else collatz (number*3 + 1) (steps +1)

isEven :: Int -> Bool
isEven x = x `mod` 2 == 0



main :: IO ()
main = do
    print "Input a number........"
    x <- readLn
    putStrLn $ "It takes " ++ (show (collatz x  0)) ++ " steps to converge"

import Prelude hiding (sum)

sum [] = 0
sum (x:xs) = x + sum xs

main = do
       let arr = [1,5,6,3]
       putStrLn ("The sum of your array is: " ++ (show (sum arr)))

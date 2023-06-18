import Data.List

average :: (Real a, Fractional b) => [a] -> b
average xs = realToFrac (sum xs) / genericLength xs

main = do
       let arr = [1, 2, 3.2343]
       putStrLn ( "Average is: " ++ show ( average arr))
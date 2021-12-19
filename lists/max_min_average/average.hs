import Data.List

main = do
       putStrLn "Calculating average of list..."
       let arr = [10, 20, -30, 15, 5]
       let average = div (sum arr) (genericLength arr)
       putStrLn (show average)
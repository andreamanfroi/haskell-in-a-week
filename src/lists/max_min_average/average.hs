import Data.List(genericLength)

main :: IO ()
main = do
       putStrLn "Calculating average of list [10, 20, -30, 15, 5]..."
       let arr::[Int] = [10, 20, -30, 15, 5]
       let average = div (sum arr) (genericLength arr)
       print average
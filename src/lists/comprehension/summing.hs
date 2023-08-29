
import Data.Map (toList)

sumTogether :: [Int] -> [Int] -> [Int]
sumTogether [] [] = []
sumTogether x y = zipWith (+) x y

sumTogether' :: [Int] -> [Int] -> [Int]
sumTogether' [] _ = []
sumTogether' _ [] = []
sumTogether' (x:xs) (y:ys) = (x + y) : sumTogether xs ys

main :: IO ()
main = do
    let x1 = [1,2,3,4]
    let x2 = [2,3,7,11]
    print $ sumTogether x1 x2
    print $ sumTogether' x1 x2
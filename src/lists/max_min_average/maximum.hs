import Data.Maybe
import Prelude hiding (max)

main = do
       let arr = ([1,2,3,4,99,10] :: [Int])
       print $ maxim arr

maxim :: [Int] -> Maybe Int
maxim []       = Nothing
maxim [x]      = Just x
maxim (x:xs)   = max x <$> maxim xs

max :: Int -> Int -> Int
max a b
    | a > b  = a
    | a < b  = b
    | a == b = a
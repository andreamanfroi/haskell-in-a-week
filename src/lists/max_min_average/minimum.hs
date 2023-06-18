import Data.Maybe
import Prelude hiding (min)

main = do
       let arr = ([1,2,3,4,99,10] :: [Int])
       print $ minim arr

minim :: [Int] -> Maybe Int
minim []       = Nothing
minim [x]      = Just x
minim (x:xs)   = min x <$> minim xs

min :: Int -> Int -> Int
min a b
    | a > b  = b
    | a < b  = a
    | a == b = a
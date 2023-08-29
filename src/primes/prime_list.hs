
primesIn :: [Int] -> [Int]
primesIn x = filter (prime) x

prime :: Int -> Bool
prime x =  length ([ y | y <- [2..(x-1)] , x `mod` y == 0]) == 0

main :: IO ()
main = do
    let boundaries = [2..10000]
    let res = primesIn boundaries
    print $ res
    print $ "There are " ++ show (length res) ++ " prime numbers between " ++ show (head boundaries) ++ " and " ++ show (last boundaries)
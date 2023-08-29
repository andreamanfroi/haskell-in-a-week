

fibonacciModN :: Int -> Int -> [Int]
fibonacciModN n k = take k $ 0 : 1 : zipWith (\a b -> (a + b) `mod` n) fibs (tail fibs)
    where
        fibs = fibonacciModN n k

main :: IO ()
main = do
    let n = 7  -- Modulus
    let k = 10 -- Number of terms to generate
    let sequence = fibonacciModN n k
    print sequence

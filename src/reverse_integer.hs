
rev :: Int -> String
rev x = read $ rev' $ show x

rev' :: [a] -> [a]
rev' [] = []
rev' [x] = [x]
rev' (x:xs) = last xs : rev' (init xs) ++ [x]

main :: IO ()
main = do
    let x::Int = 1234
    print $ rev x
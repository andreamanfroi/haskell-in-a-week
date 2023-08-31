

allPairs :: [a] -> [b] -> [(a, b)]
allPairs xs ys = do
    x <- xs
    y <- ys
    return (x, y)


main :: IO ()
main = do
    let x = [1,2,3]
    let y = ['a', 'b', 'c']
    print $ allPairs x y
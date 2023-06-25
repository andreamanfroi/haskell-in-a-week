pythagoreanTriples :: Int -> [(Int, Int, Int)]
pythagoreanTriples n = [(a, b, c) | c <- [1..n], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]


main :: IO ()
main = do
    print "PythagoreanTriples"
    print $ pythagoreanTriples 100

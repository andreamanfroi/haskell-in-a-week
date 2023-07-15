pythagoreanTriples :: Int -> [(Int, Int, Int)]
pythagoreanTriples n = [(a, b, c) | c <- [1..n], b <- [1..c], a <- [1..b], a^(2 :: Integer) + b^(2 :: Integer) == c^(2 :: Integer)]


main :: IO ()
main = do
    print "PythagoreanTriples"
    print $ pythagoreanTriples 100

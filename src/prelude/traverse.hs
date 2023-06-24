
-- A function that divides a number by 2, but returns Nothing for zero
divideByTwo :: Int -> Maybe Int
divideByTwo 0 = Nothing
divideByTwo n = Just (n `div` 2)

-- Applying divideByTwo to a list of numbers using traverse
result :: Maybe [Int]
result = traverse divideByTwo [2, 4, 6]
-- The result will be: Just [1, 2, 3]


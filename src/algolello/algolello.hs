
main :: IO ()
main = do
    let xs = [100..199]
    let ys = [100..199]
    let arr = [x * y | x <- xs, y <- ys]
    let arrAlgo = [ withAlgo x y | x <- xs, y <- ys]
    print arr
    print "--------------------------------Algolello Time!"
    print arrAlgo
    print "The following output are different from the direct calc. and the Algolello"
    let diffs = findDifferentElementsAtIndex arr arrAlgo
    print $ "On a total of " ++ show (length arr) ++ " elements"
    -- print diffs
    print $ "The errors by using Algolello are : " ++ show (length diffs)

-- Function to find different elements at the same index between two lists
findDifferentElementsAtIndex :: Eq a => [a] -> [a] -> [a]
findDifferentElementsAtIndex list1 list2 = [x | (x, y) <- zip list1 list2, x /= y]

withAlgo :: Int -> Int -> Int
withAlgo x y = read ( show (x + getLastDigit y) ++ padWithZero (show (multiplyLastTwoDigits x y))) :: Int

getLastDigit :: Int -> Int
getLastDigit n = read [lastDigit] where
    strN = show n
    lastDigit = last strN

multiplyLastTwoDigits :: Int -> Int -> Int
multiplyLastTwoDigits num1 num2 =
    let lastTwoDigits n = n `mod` 100  -- Get the last two digits by taking modulo 100
        lastDigitsProduct = lastTwoDigits num1 * lastTwoDigits num2
    in lastDigitsProduct

padWithZero :: String -> String
padWithZero str
    | length str == 1 = '0' : str
    | otherwise = str
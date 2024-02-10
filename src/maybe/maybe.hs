import System.Random

callMeMaybe :: (Ord a, Num a) => a -> Maybe a
callMeMaybe x = if x < 5 then Nothing else Just x

main :: IO ()
main = do
    let x = randomRIO (1, 10)
    putStrLn $ "The value of the maybe function is: " ++ show (callMeMaybe x)



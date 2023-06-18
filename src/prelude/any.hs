-- Function name: any
-- Description: returns True if at least one item in the list fulfill the condition
-- Signature: (a -> Bool) -> [a] -> Bool

main = do
       putStrLn "Is at least one element in [1,2,3,4,5] greater than 10?"
       putStrLn (show ( any (> 10) [1,2,3,4,5]))
       putStrLn "Is at least one element in [1,0,1,1] all equals to 0?"
       putStrLn (show ( any (== 0) [1,0,1,1]))
       putStrLn "Is at least one element in [1,2,31,34] even?"
       putStrLn (show (any even [1,2,31,34]))
       putStrLn "Is at least one squared element in [1,5] lower than 20?"
       let res = any (\x -> (x*x) < 20) [1, 5]
       putStrLn (show res)


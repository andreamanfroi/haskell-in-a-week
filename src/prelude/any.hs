-- Function name: any
-- Description: returns True if at least one item in the list fulfill the condition
-- Signature: (a -> Bool) -> [a] -> Bool

main :: IO ()
main = do
       putStrLn "Is at least one element in [1,2,3,4,5] greater than 10?"
       print ( any (> 10) [1,2,3,4,5])
       putStrLn "Is at least one element in [1,0,1,1] all equals to 0?"
       print ( any (== 0) [1,0,1,1])
       putStrLn "Is at least one element in [1,2,31,34] even?"
       print (any even [1,2,31,34])
       putStrLn "Is at least one squared element in [1,5] lower than 20?"
       let res = any (\x -> (x*x) < 20) [1, 5]
       print res


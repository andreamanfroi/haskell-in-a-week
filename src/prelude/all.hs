-- Function name: all
-- Description: returns True if all items in the list fulfill the condition
-- Signature: (a -> Bool) -> [a] -> Bool

main :: IO ()
main = do
       putStrLn "Are all the elements in [1,2,3,4,5] greater than 10?"
       print ( all (> 10) [1,2,3,4,5])
       putStrLn "Are all the elements in [1,0,1,1] all equals to 1?"
       print ( all (== 1) [1,0,1,1])
       putStrLn "Are all the elements in [2,4,6,8] even?"
       print (all even [2,4,6,8])
       putStrLn "Are all the squared elements in [1,2,3,4] lower than 20?"
       let res = all (\x -> (x*x) < 20) [1,2,3,4]
       print res


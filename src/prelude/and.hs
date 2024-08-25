-- Function name: and
-- Description: returns the conjunction of a Boolean list, the result can be True only for finite lists.
-- Signature: [Bool] -> Bool

main :: IO ()
main = do
       let x = and [True,True,False,True]
       let x' = and [True,True,True]
       putStrLn "The operation 'and' applied to a list of Boolean returns True only if all the elements are True"
       putStrLn "and [True,True,False,True] ?"
       print x
       putStrLn "and [True,True,True] ?"
       print x'
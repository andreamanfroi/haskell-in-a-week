-- Function name: break
-- Description: creates a tuple of two lists from the original one separated at condition boundary
-- Signature: (a -> Bool) -> [a] -> ([a],[a])

main = do
       let x = break (3==) [1,2,3,4,5]
       putStrLn "Break creates a tuple of two lists from an input list"
       putStrLn "Given a function to apply to determine the condition boundary"
       putStrLn "For example, given [1,2,3,4,5], then break (3==) [1,2,3,4,5] will give:"
       let firstList = fst x
       let secondList = snd x
       putStrLn (show firstList)
       putStrLn (show secondList)
       let x' = break (\x -> x==5) [1,2,3,4,5,6,7]
       let firstList' = fst x'
       let secondList' = snd x'
       putStrLn (show firstList')
       putStrLn (show secondList')
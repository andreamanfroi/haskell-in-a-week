
-- init returns all the elements of the list, except the last one
main :: IO ()
main = do
       let x = ["first element","second element","third element"]
       print $ init x
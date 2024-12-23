-- head returns the first element of a list of any type
main :: IO ()
main = do
       let x = ["first element","second element","third element"]
       putStrLn $ "Head of the list (head) is : " <> (head x)
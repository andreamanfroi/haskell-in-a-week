-- if / else branches are available in Haskell as well!

main :: IO ()
main = do
       let var::Int = 23
       if even var
          then putStrLn "Number is Even"
       else putStrLn "Number is Odd"
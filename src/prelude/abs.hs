
-- abs returns the absolute value of a number

main :: IO ()
main = do
       let x = (abs . negate) 2.4
       print x
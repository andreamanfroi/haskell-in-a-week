-- Function name: abs
-- Description: absolute value of a int
-- Signature: Num a => a -> a

main :: IO ()
main = do
       let x = (abs . negate) 2.4
       putStrLn (show x)
-- In Haskell, the Either type is a data type used to represent a value that can be one of two possible types: 
-- Left a or Right b 
-- It is commonly used to handle computations that can result in either a successful result (Right) or a failure 
-- or error condition (Left)

divide :: Double -> Double -> Either String Double
divide _ 0 = Left "Cannot divide by zero"
divide x y = Right (x / y)

main :: IO ()
main = do
  let result1 = divide 10 2
  case result1 of
    Left errMsg -> putStrLn errMsg
    Right res -> putStrLn ("Result: " ++ show res)

  let result2 = divide 10 0
  case result2 of
    Left errMsg -> putStrLn errMsg
    Right res -> putStrLn ("Result: " ++ show res)
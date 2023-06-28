
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
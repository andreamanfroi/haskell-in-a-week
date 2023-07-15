
-- A simple usage for fmap (https://hackage.haskell.org/package/base-4.18.0.0/docs/Prelude.html#v:fmap)

multiplyByTwo :: [Int] -> [Int]
multiplyByTwo = fmap (* 2)

main :: IO ()
main = do
  let myList = [1, 2, 3, 4, 5]
  let multiplied = multiplyByTwo myList
  print multiplied
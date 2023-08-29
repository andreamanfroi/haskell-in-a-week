-- PROBLEM:
-- Write a function that prints the first x iterations of the Fibonacci sequence.

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
fibonacci :: Int -> Int -> [Int]
fibonacci a b = a:fibonacci b (a+b)

main = do
      putStrLn "Please, choose the iterations number:"
      its::Int <- readLn
      let res =  take its $ fibonacci 0 1
      print $ res
      let evenSum = sum $ filter even res 
      print $ evenSum
-- PROBLEM:
-- Write a function that prints the first x iterations of the Fibonacci sequence.

--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
fibonacci :: Int -> Int -> [Int]
fibonacci a b = a:fibonacci b (a+b)

main = do
      putStrLn "Please, choose the iterations number:"
      its::Int <- readLn
      print $ take its $ fibonacci 0 1
      if its > 50 then putStrLn "Might be some overflow..." else putStrLn "done"
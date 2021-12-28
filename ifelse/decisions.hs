-- the rem function is the reminder of the division between two operands.
-- In this case, we could have also in-fixed the function as:
--  if var `rem` 2 == 0
-- which we have seen in many other programming languages more often.

main = do
       let var = 23
       if rem var 2 == 0
          then putStrLn "Number is Even"
       else putStrLn "Number is Odd"
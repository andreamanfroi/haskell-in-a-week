
{-
    Monadic binding: >>= 
    Operator signature : (>>=) :: Monad m => m a -> (a -> m b) -> m b
    . It takes a monadic value of type m a.
    . It takes a function of type a -> m b, which takes a value of type a and produces a monadic value of type m b.
    . It produces a new monadic value of type m b. 

    In this example, the getLine function returns an IO String (a monadic value that represents reading a line of text). 
    We can use the >>= operator to sequence two IO actions together. Here, 
        getLine >>= (\name -> putStrLn ("Hello, " ++ name ++ "!")) 
    takes the IO String returned by getLine and "binds" it to a function that produces another IO action (the putStrLn action). 
    The result is a new IO action that performs both the input and output operations sequentially.                
-}


main :: IO ()
main = do
    putStrLn "Enter your name:"
    getLine >>= (\name -> putStrLn ("Hello, " ++ name ++ "!"))

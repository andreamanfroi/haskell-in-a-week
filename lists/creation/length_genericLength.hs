import Data.List
import Data.Complex

main = do
       putStrLn "Lenght gives the number of elements in a list"
       putStrLn "For example, length [1,2,3,4,5,6] is: "
       let arr = [1,2,3,4,5,6]
       print $ length arr
       putStrLn "Using genericLength lenght, you can specify the type of length as a generic Num, e.g. Float"
       print (genericLength arr :: Float)
       putStrLn "or Double"
       print (genericLength arr :: Double)
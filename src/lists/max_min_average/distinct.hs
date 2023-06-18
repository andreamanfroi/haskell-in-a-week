import Data.List
import Data.Containers.ListUtils
main = do
       let arr = [1,2,3,4,3,2,4]
       putStrLn ( "Unique elements are: " ++ show (nub arr))
       let arr2 = ["un", "dos", "tres"]
       putStrLn ( "Unique elements are: " ++ show (nubOrd arr))

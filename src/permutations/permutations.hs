import Data.List (permutations, nub)

allPermutations :: String -> [String]
allPermutations str = permutations str


main :: IO ()
main = do
    let x = "aaa"
    let y = allPermutations x
    print y
    print (length y)   
    print $ (length  (nub y) )   
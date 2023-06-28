-- Permutations is a great method but it returns also "duplicates" values.
-- If the string contains duplicated letters, then also the permutations will be
-- containing duplicates
-- Nub seems to resolve the problem.


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
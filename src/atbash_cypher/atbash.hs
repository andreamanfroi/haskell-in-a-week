{- 
   The Atbash cipher is a simple substitution cipher where each letter in the 
   input string is replaced with its corresponding letter in the reverse alphabet. 
   It means that 'a' becomes 'z', 'b' becomes 'y', and so on.
-}

import Data.Maybe (mapMaybe)

atbash:: String -> String
atbash = mapMaybe (\c -> lookup c (zip ['a'..'z'] (reverse ['a'..'z'])))  

atbash' :: String -> String
atbash' x = mapMaybe atb x 
        where rev = (zip ['a'..'z'] (reverse ['a'..'z']))
              atb c = lookup c rev

main :: IO ()
main = do
    putStrLn "Let's atbash a string! Please, input any string here below:"
    x <- getLine
    let y = atbash' x
    -- let y = atbash' x
    print y
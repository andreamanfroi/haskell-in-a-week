import Data.Maybe (catMaybes)

atbash:: String -> String
atbash x  = catMaybes $ map (\c -> lookup c (zip ['a'..'z'] (reverse ['a'..'z'])))  x

main :: IO ()
main = do 
    putStrLn "Let's atbash a string! Please, input any string here below:"
    x <- getLine
    let y = atbash x
    print y
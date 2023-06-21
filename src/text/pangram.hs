
import           Data.Char (toUpper)

isPangram :: String -> Bool
isPangram text = all (`elem` map toUpper text) ['A'..'Z']

main :: IO ()
main = do
    print "Please, input a string, I will check if pangram..."
    x <- getLine
    putStrLn $ "The sentence is a pangram? : " ++ show (isPangram x)
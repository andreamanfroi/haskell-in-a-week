import System.Environment

main :: IO ()
main = do
       args <- getArgs
       content <- readFile (head args)
       let linesOfFiles = lines content
       print (show linesOfFiles)
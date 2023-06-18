import System.Environment

main = do
       args <- getArgs
       content <- readFile (args !! 0)
       let linesOfFiles = lines content
       print (show linesOfFiles)
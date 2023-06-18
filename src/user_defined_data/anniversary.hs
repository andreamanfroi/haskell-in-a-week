data Anniversary = Birthday String Int Int Int       -- name, year, month, day
                 | Wedding String String Int Int Int -- spouse name 1, spouse name 2, year, month, day
                 deriving (Show,Eq,Ord)


main = do
    let anniv:: Anniversary = Birthday "Andrea" 1 9 1984
    putStrLn ("The anniversary is: " ++ (show anniv))
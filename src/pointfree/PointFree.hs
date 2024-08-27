module PointFree (examplePointFree) where

    --
    -- - "Da argument is to be sold,
    --    not to be told" -  Snoop Dogg
    --

    doubleIt :: Int -> Int
    doubleIt x = x * 2

    addOne :: Int -> Int
    addOne = succ

    -- point free notation
    
    examplePointFree :: Int -> Int
    examplePointFree = doubleIt . addOne
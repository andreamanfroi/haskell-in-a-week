module PointFree (examplePointFree) where

    doubleIt :: Int -> Int
    doubleIt x = x * 2

    addOne :: Int -> Int
    addOne = succ

    -- point free notation
    
    examplePointFree :: Int -> Int
    examplePointFree = doubleIt . addOne
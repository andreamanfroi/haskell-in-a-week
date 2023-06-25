-- Implement the keep and discard operation on collections. Given a collection and a predicate on the collection's elements, keep returns a new collection containing those elements where the predicate is true, while discard returns a new collection containing those elements where the predicate is false.
-- For example, given the collection of numbers:
--     1, 2, 3, 4, 5
-- And the predicate:
--     is the number even?
-- Then your keep operation should produce:
--     2, 4
-- While your discard operation should produce:
--     1, 3, 5
-- Note that the union of keep and discard is all the elements.
-- The functions may be called keep and discard, or they may need different names in order to not clash with existing functions or concepts in your language.



--DULL SOLUTION USING FILTER XD
module KeepDiscard (keep,discard) where
-- keep
keep :: (a -> Bool) -> [a] -> [a]
keep predicate list = filter predicate list

-- discard
discard :: (a -> Bool) -> [a] -> [a]
discard predicate list = filter (not . predicate) list

main :: IO ()
main = do
    print "Keep or discard example"



--NICER SOLUTION USING LIST COMPREHENSION

-- module Strain (keep, discard) where

-- discard :: (a -> Bool) -> [a] -> [a]
-- discard p xs = [ x | x <- xs, not (p x)]

-- keep :: (a -> Bool) -> [a] -> [a]
-- keep p xs = [ x | x <- xs, p x]

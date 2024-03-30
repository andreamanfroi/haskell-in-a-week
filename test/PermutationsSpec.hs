module PermutationsSpec (spec) where

import Permutations (permute)
import Test.Hspec ( describe, it, shouldBe, Spec )


spec :: Spec
spec = do
  describe "Permutations" $ do
    it "Permutations >> permutations of [1,2,3]" $ do
        permute "abc" `shouldBe` ["abc","bac","cba","bca","cab","acb"]
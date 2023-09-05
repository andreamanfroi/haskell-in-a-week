module CollatzSpec (spec) where

import Collatz
import Test.Hspec

spec :: Spec
spec = do
  describe "Collatz" $ do
    it "Collatz: takes 3 steps from 8" $ do
        collatz 8 0 `shouldBe` 3
    it "Collatz: [8 4 2 1] should be the steps for 8" $ do  
        collatz' 8 `shouldBe` [8,4,2,1]

module PerfectNumberSpec (spec) where

import PerfectNumber
import Test.Hspec

spec :: Spec
spec = do
  describe "PerfectNumber" $ do
    it "PerfectNumber >> [6,28,496,8128] are perfect numbers in the range [1..10000]" $ do
        findPerfectsInRange [1..10000] `shouldBe` [6,28,496,8128]
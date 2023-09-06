module GreatestCommonDivisorSpec (spec) where

import GreatestCommonDivisor
import Test.Hspec

spec :: Spec
spec = do
  describe "GreatestCommonDivisor" $ do
    it "GreatestCommonDivisor: 4 is the gcd between 8,12" $ do
       greatestCommonDivisor 8 12 `shouldBe` 4
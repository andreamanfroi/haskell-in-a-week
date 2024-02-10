module GreatestCommonDivisorSpec (spec, spec') where

import GreatestCommonDivisor
import Test.Hspec

spec :: Spec
spec = do
  describe "GreatestCommonDivisor" $ do
    it "GreatestCommonDivisor: 4 is the gcd between 8,12" $ do
       greatestCommonDivisor 8 12 `shouldBe` 4

spec' :: Spec
spec' = do
  describe "GreatestCommonDivisor" $ do
    it "GreatestCommonDivisor: 15 is the gcd between 30,75" $ do
       greatestCommonDivisor 30 75 `shouldBe` 15
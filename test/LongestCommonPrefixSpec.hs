
module LongestCommonPrefixSpec (spec) where

import LongestCommonPrefix
import Test.Hspec

spec :: Spec
spec = do
  describe "LongestCommonPrefix" $ do
    it "LongestCommonPrefix >> given moon and racoon should be oon" $ do
        lcp "moon" "racoon" `shouldBe` "oon"
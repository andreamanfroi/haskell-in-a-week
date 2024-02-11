
module PangramSpec (spec) where

import Pangram
import Test.Hspec

spec :: Spec
spec = do
  describe "Pangram" $ do
    it "Pangram : hello world is not a pangram" $ do
        pangram "hello world" `shouldBe` False
    it "Pangram : the quick brown fox jumps over the lazy dog is a pangram" $ do  
        pangram "the quick brown fox jumps over the lazy dog" `shouldBe` True
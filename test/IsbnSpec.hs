module IsbnSpec (spec, spec2, spec3) where

import Isbn (isValid)
import Test.Hspec

spec :: Spec
spec = do
  describe "Isbn" $ do
    it "Isbn : 3-598-21507-X is valid isbn" $ do
        isValid "3-598-21507-X" `shouldBe` True

spec2 :: Spec
spec2 = do
  describe "Isbn" $ do
    it "Isbn : 3-598-21508-8 is valid isbn" $ do
        isValid "3-598-21508-8" `shouldBe` True

spec3 :: Spec
spec3 = do
  describe "Isbn" $ do
    it "Isbn: 3-598-21507-3 is valid isbn" $ do
        isValid "3-598-21507-3" `shouldBe` False
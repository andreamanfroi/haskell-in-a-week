module AtbashSpec (spec) where

import Atbash
import Test.Hspec

spec :: Spec
spec = do
  describe "Atbash" $ do
    it "Atbash: aaa atbashes to zzz" $ do
        atbash "aaa" `shouldBe` "zzz"
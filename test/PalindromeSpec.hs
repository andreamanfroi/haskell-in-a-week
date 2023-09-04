
module PalindromeSpec (spec) where

import Palindrome
import Test.Hspec

spec :: Spec
spec = do
  describe "Palindrome" $ do
    it "Palindrome: helloworld is not palindrome" $ do
        palindrome "helloworld" `shouldBe` False
    it "Palindrome: kayak is palindrome" $ do  
        palindrome' "kayak" `shouldBe` True
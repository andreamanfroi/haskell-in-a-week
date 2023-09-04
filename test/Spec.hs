
import StrAdd
import Pangram
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Pangram" $ do
    it "Pangram is false" $ do
        pangram "Hello" `shouldBe` False
    it "Pangram is true" $ do  
        pangram "the quick brown fox jumps over the lazy dog" `shouldBe` True

module ProductExceptSelfSpec (spec) where

import ProductExceptSelf (productExceptSelf')
import Test.Hspec ( describe, it, shouldBe, Spec )


spec :: Spec
spec = do
  describe "ProductExceptSelf" $ do
    it "ProductExceptSelf >> product excpet self [1,2,3]" $ do
        productExceptSelf' [1,2,3] `shouldBe` [6,3,2]
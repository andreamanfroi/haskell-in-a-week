
module RunningSumSpec (spec) where

import RunningSum (runningSum)
import Test.Hspec ( describe, it, shouldBe, Spec )


spec :: Spec
spec = do
  describe "RunningSum" $ do
    it "RunningSum >> running sum of [1,2,3,4,5]" $ do
        runningSum [1,2,3,4,5] `shouldBe` [1,3,6,10,15]
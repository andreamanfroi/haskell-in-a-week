module PokerSpec (spec) where

import Poker (randomCard
             ,Card(..)
             ,Rank(..)
             ,Suit(..))

import Test.Hspec

spec :: Spec
spec = do
  describe "Poker" $ do
    it "Poker: random card is queen of spade" $ do
        card <- randomCard
        card `shouldBe` (Card Spades Queen)
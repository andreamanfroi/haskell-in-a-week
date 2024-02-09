module PokerSpec (spec) where

import Poker (randomCard
             ,dealHand
             ,sameSuit
             ,isPair
             ,threeOfKind
             ,poker
             ,Card(..)
             ,Rank(..)
             ,Suit(..))

import Test.Hspec

--spec :: Spec
--spec = do
--  describe "Poker" $ do
--    it "Poker: random card is queen of spade" $ do
--        card <- randomCard
--        card `shouldBe` (Card Spades Queen)


--spec :: Spec
--spec = do
--  describe "Poker" $ do
--    it "Poker: deals an hand of 5 cards" $ do
--        cards <- dealHand 5
--        print cards
--        length cards `shouldBe` 5

spec :: Spec
spec = do
  describe "Poker" $ do
    it "Poker: same suit" $ do
        let hand = [Card Spades Four, Card Diamonds Five, Card Diamonds Three, Card Diamonds Jack, Card Diamonds Queen]
        sameSuit hand `shouldBe` True

spec :: Spec
spec = do
  describe "Poker" $ do
    it "Poker: is pair" $ do
        let hand = [Card Spades Four, Card Diamonds Four, Card Diamonds Three, Card Diamonds Jack, Card Diamonds Queen]
        isPair hand `shouldBe` True

spec :: Spec
spec = do
  describe "Poker" $ do
    it "Poker: is three of kind" $ do
        let hand = [Card Diamonds Four, Card Spades Four, Card Hearts Four, Card Diamonds Jack, Card Diamonds Queen]
        isThreeOfKind hand `shouldBe` True

spec :: Spec
spec = do
  describe "Poker" $ do
    it "Poker: is poker" $ do
        let hand = [Card Diamonds Four, Card Spades Four, Card Hearts Four, Card Clubs Four, Card Diamonds Queen]
        isPoker hand `shouldBe` True
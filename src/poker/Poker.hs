
module Poker (randomCard
             ,dealHand
             ,sameSuit
             ,isPair
             ,Card(..)
             ,Rank(..)
             ,Suit(..)) where

import System.Random
import Control.Monad (replicateM)
import Data.List
import Data.Function

data Score = HighCard | Pair | ThreeOfKind | Straight | FullHouse | Poker | StraightFlush | RoyalFlush
  deriving (Show, Eq, Enum)

data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Show, Eq, Enum, Bounded)

data Suit = Hearts | Diamonds | Clubs | Spades
  deriving (Show, Eq, Enum, Bounded)

data Card = Card Suit Rank
  deriving (Show, Eq)


randomRank :: IO Rank
randomRank = do
  randomIndex <- randomRIO (fromEnum (minBound :: Rank), fromEnum (maxBound :: Rank))
  return (toEnum randomIndex)

randomSuit :: IO Suit
randomSuit = do
  randomIndex <- randomRIO (fromEnum (minBound :: Suit), fromEnum (maxBound :: Suit))
  return (toEnum randomIndex)

randomCard :: IO Card
randomCard = do
  randomRankValue <- randomRank
  randomSuitValue <- randomSuit
  return (Card randomSuitValue randomRankValue)

dealHand :: Int -> IO [Card]
dealHand size = replicateM size randomCard


-- Check if all cards in a hand have the same suit
sameSuit :: [Card] -> Bool
sameSuit [] = True
sameSuit [_] = True
sameSuit (card1@(Card suit1 _) : card2@(Card suit2 _) : rest) = suit1 == suit2 && sameSuit (card2 : rest)

-- Check if at least two cards in hand have the same rank
isPair :: [Card] -> Bool
isPair hand =
  any (\group -> length group == 2) (groupBy ((==) `on` rank) (sort hand))


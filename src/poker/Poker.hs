
module Poker (randomCard
             ,Card(..)
             ,Rank(..)
             ,Suit(..)) where

import System.Random

data Score = Pair | ThreeOfKind | Straight | FullHouse | Poker | StraightFlush | RoyalFlush
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
  print "Poker game - best hand checking in progress..."
  randomRankValue <- randomRank
  randomSuitValue <- randomSuit
  return (Card randomSuitValue randomRankValue)



--main :: IO ()
--main = do
--    print "Poker game - best hand checking in progress..."
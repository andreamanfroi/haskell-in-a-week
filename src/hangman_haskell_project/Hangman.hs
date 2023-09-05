import System.Random
import Control.Monad.State
import Control.Monad.IO.Class

-- Define the HangmanState
data HangmanState = HangmanState
    { guessWord :: String
    , attempts :: Int
    , guessedLetters :: [Char]
    } deriving (Show)

-- Function to choose a random word
chooseWord :: [String] -> IO String
chooseWord wordList = do
    randIndex <- randomRIO (0, length wordList - 1)
    return (wordList !! randIndex)

-- Function to update the game state based on a guess
updateGameState :: Char -> StateT HangmanState IO ()
updateGameState guess = do
    hangmanState <- get
    let word = guessWord hangmanState
    let attemptsLeft = attempts hangmanState
    let guessed = guessedLetters hangmanState
    if guess `elem` word
        then do
            liftIO $ putStrLn "Correct guess!"
            let newGuessed = guess : guessed
            let newState = hangmanState { guessedLetters = newGuessed }
            put newState
        else do
            liftIO $ putStrLn "Incorrect guess!"
            let newState = hangmanState { attempts = attemptsLeft - 1 }
            put newState

-- Main game loop
mainLoop :: StateT HangmanState IO ()
mainLoop = do
    hangmanState <- get
    let word = guessWord hangmanState
    let guessed = guessedLetters hangmanState
    let attemptsLeft = attempts hangmanState

    -- Check for game over conditions
    if attemptsLeft == 0
        then do
            liftIO $ putStrLn $ "You ran out of attempts! The word was: " ++ word
        else if all (`elem` guessed) word
            then do
                liftIO $ putStrLn $ "Congratulations! You guessed the word: " ++ word
            else do
                liftIO $ putStrLn $ "Word: " ++ displayWord word guessed
                liftIO $ putStrLn $ "Attempts left: " ++ show attemptsLeft
                liftIO $ putStrLn "Input a letter from the alphabet"
                choice <- liftIO getLine
                case choice of
                    [c] -> do
                        updateGameState c
                        mainLoop
                    _ -> do
                        liftIO $ putStrLn "Please enter a single letter."
                        mainLoop

-- Function to display the word with guessed letters filled in
displayWord :: String -> [Char] -> String
displayWord word guessed = map (\c -> if c `elem` guessed then c else '_') word

main :: IO ()
main = do
    let wordList = ["hangman", "computer", "programming", "haskell"]
    chosenWord <- chooseWord wordList
    let initialState = HangmanState chosenWord 6 []
    evalStateT mainLoop initialState

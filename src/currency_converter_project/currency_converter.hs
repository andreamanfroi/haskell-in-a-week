
import Control.Monad.State
import Data.List (nub,find)
import Data.Maybe (maybe)

data Exchange = Exchange
    { currencyFrom :: String
    , currencyTo :: String
    , exchangeRate :: Double
    } deriving (Show)

type ExchangeList = [Exchange]

-- Function to display the available currencies
showCurrencies :: ExchangeList -> IO ()
showCurrencies list = do
    let currencies = nub [currencyFrom x | x <- list] ++ [currencyTo x | x <- list]
    liftIO $ print currencies

-- Function to list exchange rates
showExchangeRates :: ExchangeList -> IO ()
showExchangeRates = mapM_ printExchange

-- Function to change the currency
changeCurrency :: Double -> String -> String -> ExchangeList -> IO ()
changeCurrency amt cf ct list = do
    let excRate = getExchangeRate cf ct list
    case excRate of
        Nothing -> return ()
        Just rate -> do
            liftIO $ putStrLn ("The desired change is: " ++ show (amt * exchangeRate rate))

getExchangeRate :: String -> String -> ExchangeList -> Maybe Exchange
getExchangeRate curFrom curTo list = Just =<< find (\x -> curFrom == currencyFrom x && curTo == currencyTo x) list

printExchange :: Exchange -> IO ()
printExchange exchange = do
    putStrLn $ "Currency From: " ++ currencyFrom exchange
    putStrLn $ "Currency To: " ++ currencyTo exchange
    putStrLn $ "Exchange Rate: " ++ show (exchangeRate exchange)
    putStrLn "*************"

-- The main program loop
mainLoop :: StateT ExchangeList IO ()
mainLoop = do
    liftIO $ putStrLn "1. Convert currency"
    liftIO $ putStrLn "2. List available currencies"
    liftIO $ putStrLn "3. List exchange rates"
    liftIO $ putStrLn "4. Quit"
    choice <- liftIO getLine
    case choice of
        "1" -> do
            liftIO $ putStrLn "Enter an amount:"
            amount <- liftIO getLine
            let amtDouble = read amount :: Double
            liftIO $ putStrLn "Enter currency from:"
            currFrom <- liftIO getLine
            liftIO $ putStrLn "Enter currency to:"
            currTo <- liftIO getLine
            exchangeRates <- get
            liftIO $ changeCurrency amtDouble currFrom currTo exchangeRates
            mainLoop
        "2" -> do
            liftIO $ putStrLn "List of available currencies:"
            exchangeRates <- get
            liftIO $ showCurrencies exchangeRates
            mainLoop
        "3" -> do
            liftIO $ putStrLn "List of available exchange rates"
            exchangeRates <- get
            liftIO $ showExchangeRates exchangeRates
            mainLoop
        "4" -> return ()
        _ -> do
            liftIO $ putStrLn "Invalid choice"
            mainLoop

main :: IO ()
main = do
    putStrLn "Welcome to Currency Converter!"
    -- these values are preloaded here but they might be read from a file, etc...
    let exchangeRates = [ 
                          Exchange "USD" "EUR" 2.3
                        , Exchange "GBP" "USD" 1.2
                        , Exchange "USD" "GBP" 1.2
                        , Exchange "EUR" "GBP" 1.2
                        ]
    finalState <- execStateT mainLoop exchangeRates
    putStrLn "Goodbye!"
    print finalState

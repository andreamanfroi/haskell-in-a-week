
data Clock = Clock { hour :: Int, minute :: Int}
               deriving (Show)

fromHourMin :: Int -> Int -> Clock
fromHourMin = Clock

toString :: Clock -> IO()
toString (Clock hour minutes) = print (show hour ++ ":" ++ show minutes)


main :: IO ()
main = do
    print "Clock is ticking..."
    let clock = fromHourMin 10 24
    print clock
    toString clock
--needs to install the following deps:
import Network.HTTP.Conduit
import qualified Data.ByteString.Lazy as L

main = simpleHttp "http://www.google.com" >>= L.putStr
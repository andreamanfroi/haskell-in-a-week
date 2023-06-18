{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_haskell_in_a_week (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath



bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "C:\\Users\\andre\\OneDrive\\Desktop\\Code\\haskell-tutorial\\haskell-in-a-week\\.stack-work\\install\\bf1719e9\\bin"
libdir     = "C:\\Users\\andre\\OneDrive\\Desktop\\Code\\haskell-tutorial\\haskell-in-a-week\\.stack-work\\install\\bf1719e9\\lib\\x86_64-windows-ghc-9.2.8\\haskell-in-a-week-0.1.0.0-JcPVe0bACi1LlYYyniA94J-haskell-in-a-week-test"
dynlibdir  = "C:\\Users\\andre\\OneDrive\\Desktop\\Code\\haskell-tutorial\\haskell-in-a-week\\.stack-work\\install\\bf1719e9\\lib\\x86_64-windows-ghc-9.2.8"
datadir    = "C:\\Users\\andre\\OneDrive\\Desktop\\Code\\haskell-tutorial\\haskell-in-a-week\\.stack-work\\install\\bf1719e9\\share\\x86_64-windows-ghc-9.2.8\\haskell-in-a-week-0.1.0.0"
libexecdir = "C:\\Users\\andre\\OneDrive\\Desktop\\Code\\haskell-tutorial\\haskell-in-a-week\\.stack-work\\install\\bf1719e9\\libexec\\x86_64-windows-ghc-9.2.8\\haskell-in-a-week-0.1.0.0"
sysconfdir = "C:\\Users\\andre\\OneDrive\\Desktop\\Code\\haskell-tutorial\\haskell-in-a-week\\.stack-work\\install\\bf1719e9\\etc"

getBinDir     = catchIO (getEnv "haskell_in_a_week_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "haskell_in_a_week_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "haskell_in_a_week_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "haskell_in_a_week_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_in_a_week_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_in_a_week_sysconfdir") (\_ -> return sysconfdir)




joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '\\'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/' || c == '\\'

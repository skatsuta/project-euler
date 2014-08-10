import Collatz
import Data.List
import Control.Applicative

main :: IO ()
main = do
  num <- getLine
  let collatzSeqLengthList = map (length . collatzSeq) [1..(read num :: Int)]
  print $ (+) <$> elemIndex (maximum collatzSeqLengthList) collatzSeqLengthList <*> Just 1


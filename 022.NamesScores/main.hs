import NameScore
import Data.List

main :: IO ()
main = do
  contents <- readFile "names.txt"
  print $ sum $ zipWith (*) [1..] $ namesScores $ sort $ splitNames contents


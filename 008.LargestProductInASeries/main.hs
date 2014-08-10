import Subseq

main :: IO ()
main = do
  numList <- readFile "source"
  print $ maximum $ map product $ subseq 13 $ toIntList $ init numList

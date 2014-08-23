import Data.Char
import Text.Regex

main :: IO ()
main = do
  contents <- readFile "p042_words.txt"
  print $ length $ filter isTriangleWord $ splitStrings contents

triangleNumbers :: [Int]
triangleNumbers = scanl1 (+) [1..]

alphabetValue :: Char -> Int
alphabetValue c = ord c - ord 'A' + 1

wordValue :: String -> Int
wordValue word = sum $ map alphabetValue word

isTriangleWord :: String -> Bool
isTriangleWord word = last (takeWhile (<= wval) triangleNumbers) == wval
  where wval = wordValue word

splitStrings :: String -> [String]
splitStrings contents = filter (not . null) $ splitRegex (mkRegex "[\",]") contents


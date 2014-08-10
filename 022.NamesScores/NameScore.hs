module NameScore
( splitNames
, nameScore
, alphaScore
, namesScores
) where

import Text.Regex
import Data.Char

splitNames :: String -> [String]
splitNames contents = filter (not . null) $ splitRegex (mkRegex "[\",]") contents

nameScore :: String -> Int
nameScore name = sum $ map alphaScore name

alphaScore :: Char -> Int
alphaScore c = ord c - ord 'A' + 1

namesScores :: [String] -> [Int]
namesScores = map nameScore

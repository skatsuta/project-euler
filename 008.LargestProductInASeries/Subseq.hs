module Subseq (subseq, toIntList) where

subseq :: Int -> [a] -> [[a]]
subseq _ [] = []
subseq n xs@(_:ys) = take n xs : subseq n ys

toIntList :: String -> [Int]
toIntList xs = map (read . (:"")) xs :: [Int]

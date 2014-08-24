import Data.List
import Control.Applicative

main :: IO ()
main = print $ allPermutablyEqual [123, 231, 312]

permutablyEqual :: Int -> Int -> Bool
permutablyEqual x y = permutablyEqual' (show x) (show y)
  where permutablyEqual' [] _ = True
        permutablyEqual' _ [] = True
        permutablyEqual' (x':xs) y' = x' `elem` y' && permutablyEqual' xs y'

allPermutablyEqual :: [Int] -> Bool
allPermutablyEqual [] = True
allPermutablyEqual [_] = True
allPermutablyEqual (x:y:xs) = permutablyEqual x y && allPermutablyEqual (y:xs)

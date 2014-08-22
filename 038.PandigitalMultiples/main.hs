import Data.List
import Control.Applicative

main :: IO ()
main = print $ concatProduct 2 5

isPandigital :: String -> Bool
isPandigital n = n `elem` pandigitals where pandigitals = permutations ['1'..'9']

concatProduct :: Int -> Int -> String
concatProduct int n = concatMap show $ (*) <$> [1..n] <*> [int]

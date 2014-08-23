import Data.List
import Control.Applicative

main :: IO ()
main = print $ maximum $ map (read :: String -> Int) $ filter isPandigital $ takeWhile (\xs -> length xs < 10) $ concatProduct <$> [2..] <*> [1..10000]

isPandigital :: String -> Bool
isPandigital [] = True
isPandigital (x:xs) = x /= '0' && notElem x xs && isPandigital xs

concatProduct :: Int -> Int -> String
concatProduct n int = concatMap show $ (*) <$> [1..n] <*> [int]

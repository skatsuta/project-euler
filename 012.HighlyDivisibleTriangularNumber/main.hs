import Data.List
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  let n = read $ head args :: Integer
  print $ find (\xs -> length xs >= 500) $ map divisors $ triSeries n

divisors :: Integer -> [Integer]
divisors n = 1 : filter ((== 0) . rem n) [2..n `div` 2]

triSeries :: Integer -> [Integer]
triSeries n = scanl (+) 1 [2..n]
--triSeries n = map (\m -> m * (m + 1) `div` 2) [1..n]

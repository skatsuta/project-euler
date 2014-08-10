import Data.List
import System.Environment

main :: IO ()
main = do
  input <- getArgs
  let n = read $ head input
  print $ sum $ map (uncurry (+)) $ amicableNumbers n

amicableNumbers :: Int -> [(Int, Int)]
amicableNumbers n = [(x, y) | x <- [1..n], y <- [x..n], x /= y, x `isAmicable` y]

divisors :: Int -> [Int]
divisors n = 1 : filter ((== 0) . rem n) [2..n `div` 2]

isAmicable :: Int -> Int -> Bool
isAmicable x y = sum (divisors x) == y && sum (divisors y) == x

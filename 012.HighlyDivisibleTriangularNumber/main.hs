import Data.List

main :: IO ()
main = print $ find (\xs -> length xs > 500) $ map divisors triSeries

divisors :: Int -> [Int]
divisors n = 1 : filter ((== 0) . rem n) [2..n `div` 2] ++ [n]

triSeries :: [Int]
triSeries = scanl (+) 1 [2..]

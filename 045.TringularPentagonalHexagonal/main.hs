import Data.List

main :: IO ()
main = print $ pentagonalNumbers

triangleNumbers :: [Int]
triangleNumbers = scanl1 (+) [1..]

pentagonalNumbers :: [Int]
pentagonalNumbers = map pentagonal [1..] where pentagonal n = n * (3 * n - 1) `div` 2

hexagonalNumbers :: [Int]
hexagonalNumbers = map hexagonal [1..] where hexagonal n = n * (2 * n - 1)

isIn :: [Int] -> Int -> Bool
isIn nums n = last (takeWhile (<= n) nums) == n


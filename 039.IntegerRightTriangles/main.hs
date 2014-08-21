import Data.List

main :: IO ()
main = print $ fmap (+1) $ elemIndex maxSolNum solNums
  where maxSolNum= maximum solNums
        solNums = map (length . pythagorianTriangles) nums
        nums = [1..1000]

pythagorianTriangles :: Int -> [(Int, Int, Int)]
pythagorianTriangles n = [(a, b, c) | a <- [1..n `div` 3], b <- [a..n `div` 3 * 2], let c = n - a - b, a^2 + b^2 == c^2]

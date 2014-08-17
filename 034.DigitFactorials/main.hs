import Data.Char

maxVal :: Int
maxVal = factorial 9 * 7

main :: IO ()
main = print $ sum $ filter (\x -> x == digitFactorialSum x) [3..maxVal]

digitFactorialSum :: Int -> Int
digitFactorialSum n = sum $ map (factorial . digitToInt) $ show n

factorial :: Int -> Int
factorial n = product [1..n]

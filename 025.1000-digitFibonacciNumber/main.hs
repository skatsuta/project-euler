import Data.List

main :: IO ()
main = print $ findIndex (\x -> (length . show) x >= 1000) fibs

-- Fibonacci 数列を生成する
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

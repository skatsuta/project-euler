import Data.List

main :: IO ()
main = print $ length $ nub squares

squares :: [Integer]
squares = [x ^ y | x <- [2..n] :: [Integer], y <- [2..n] :: [Integer]]
  where n = 100

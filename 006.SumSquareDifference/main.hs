main :: IO ()
main = print $ abs (sumSquares n - squareSum n) where n = 100

sumSquares :: Integer -> Integer
sumSquares n = sum $ map (^ 2) [1..n]

squareSum :: Integer -> Integer
squareSum n = (sum [1..n]) ^ 2

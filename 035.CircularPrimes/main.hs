import Data.Numbers.Primes

main :: IO ()
main = print $ length $ filter isCircularPrime [2..1000000]

isCircularPrime :: Int -> Bool
isCircularPrime n = all isPrime $ map (read :: String -> Int) $ rotates $ show n

shift :: [a] -> [a]
shift [] = []
shift (x:xs) = xs ++ [x]

rotates :: [a] -> [[a]]
rotates xs = take (length xs) $ iterate shift xs

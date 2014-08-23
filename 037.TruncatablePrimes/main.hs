import Data.Numbers.Primes
import Data.List
import Control.Applicative

main :: IO ()
main = print $ sum $ filter (\x -> isTruncatablePrime x && x > 7) [1..1000000]

isTruncatablePrime :: Int -> Bool
isTruncatablePrime n = all (isPrime :: Int -> Bool) $ map read $ filter (not . null) $ concat $ [inits, tails] <*> [show n]

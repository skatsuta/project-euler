import Data.List.Ordered
import Data.Numbers.Primes
import Control.Applicative

main :: IO ()
main = print $ sum $ buildList [1..10000]
--main = print $ sum $ buildList [1..28123]

divisors :: Int -> [Int]
divisors n = [x | x <- [1..n `div` 2], n `rem` x == 0]

isAbundant :: Int -> Bool
isAbundant n = n < sum (divisors n)

abundants :: [Int]
abundants = filter isAbundant [1..28124 `div` 2]
twoAbundantSums :: [Int]
twoAbundantSums = f abundants
  where f xs = xs >>= (\x -> (+x) <$> xs)

buildList :: [Int] -> [Int]
buildList [] = []
buildList (x:xs)
  | x `member` primes || not (x `member` twoAbundantSums) = x : buildList xs
  | otherwise = buildList xs

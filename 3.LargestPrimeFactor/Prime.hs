module Prime (primes, factors, primeFactors) where

primes :: [Integer]
primes = primes' (2:[3,5..])
  where primes' [] = []
        primes' (x:xs) = x : primes' (filter (notDivisorOf x) xs)
        notDivisorOf d n = n `mod` d /= 0

factors :: [Integer] -> Integer -> [Integer]
factors [] _ = []
factors ys@(x:xs) n
  | n < 2 = []
  | r == 0 = x : factors ys q
  | otherwise = factors xs n
  where (q, r) = quotRem n x

primeFactors :: Integer -> [Integer]
primeFactors = factors primes


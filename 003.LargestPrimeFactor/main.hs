import Data.Numbers.Primes

main :: IO ()
main = do
  let num = 600851475143 :: Integer
  print $ last $ primeFactors num

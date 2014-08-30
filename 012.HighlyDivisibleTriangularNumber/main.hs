import Data.List
import Math.NumberTheory.Primes.Factorisation
import Data.Maybe

main :: IO ()
main = print $ fst $ fromJust $ find (\t -> snd t >= 500) $ map (\x -> (x, divisorCount x)) triSeries

triSeries :: [Integer]
triSeries = scanl (+) 1 [2..]


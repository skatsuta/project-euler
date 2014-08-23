import Data.Char
import Data.List
import Data.Numbers.Primes
import Control.Applicative
import Control.Monad

main :: IO ()
main = print $ isPadigital <$> [1..5] <*> [1..3]

isPadigital :: Int -> Int -> Bool
n `isPadigital` digit = length (show n) == digit && show n `isPadigital'` digit
  where [] `isPadigital'` _ = True
        (x:xs) `isPadigital'` digit' = notElem x xs && xs `isInfixOf` ['1'..(intToDigit digit')]

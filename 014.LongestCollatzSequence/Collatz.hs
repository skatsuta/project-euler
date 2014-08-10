module Collatz (collatz, collatzSeq) where

collatz :: Int -> Int
collatz 1 = 1
collatz n = if even n then n `div` 2 else 3 * n + 1

collatzSeq :: Int -> [Int]
collatzSeq = terminate . iterate collatz
  where terminate [] = []
        terminate (1:_) = [1]
        terminate (x:xs) = x : terminate xs


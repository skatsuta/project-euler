module Pythagorian (pythagorianTriplet) where

pythagorianTriplet :: Int -> [[Int]]
pythagorianTriplet n = [[x, y, z] | x <- [1..n], y <- [x+1..n], z <- [y+1..n], z < x + y, x ^ 2 + y ^ 2 == z ^ 2]

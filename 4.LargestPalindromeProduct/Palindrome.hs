module Palindrome (
comb, pairProd, firstHalf, secondHalf, filterPalindrome, findLargestPalindrome
) where

comb :: Int -> Int -> [(Int, Int)]
comb a b = [(x, y) | x <- [a..b], y <- [x..b]]

pairProd :: [(Int, Int)] -> [Int]
pairProd = map (uncurry (*))

firstHalf :: Int -> String
firstHalf x = take (length str `div` 2) str where str = show x

secondHalf :: Int -> String
secondHalf x = drop num str
  where str = show x
        len = length str
        num = if len `mod` 2 == 0
              then len `div` 2
              else len `div` 2 + 1

isPalindrome :: Int -> Bool
isPalindrome x = firstHalf x == reverse (secondHalf x)

filterPalindrome :: [Int] -> [Int]
filterPalindrome [] = []
filterPalindrome xs = filter isPalindrome xs

findLargestPalindrome :: Int -> Int -> Int
findLargestPalindrome a b = last $ filter isPalindrome $
                            map (uncurry (*)) [(x, y) | x <- [a..b], y <- [x..b]]

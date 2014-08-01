import Palindrome

main :: IO ()
main = print $ maximum $ filterPalindrome $ map (uncurry (*)) (comb 100 999)

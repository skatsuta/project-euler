import Data.List

main :: IO ()
main = print $ permutablyEqual 2423 4321

permutablyEqual :: Int -> Int -> Bool
permutablyEqual x y = show x `elem` permutations (show y)

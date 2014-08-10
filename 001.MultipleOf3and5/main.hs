main :: IO ()
main = print $ sum $ filter is3or5 [1..999]
  where is3or5 = (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) :: Int -> Bool

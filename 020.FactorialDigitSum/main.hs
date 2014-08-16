main :: IO ()
main = print $ (sum :: [Int] -> Int) $ map (read . (:"")) $ show $ product ([1..100] :: [Integer])

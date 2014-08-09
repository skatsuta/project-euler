main :: IO ()
main = print $ drop (length s - 10) s where s = show $ sum $ map (\x -> x ^ x) ([1..1000] :: [Integer])

main :: IO ()
main = print $ maximum $ map ((sum :: [Integer] -> Integer) . map (read . (:"")) . show) [x ^ y | x <- [2..n] :: [Integer], y <- [2..n] :: [Integer]] where n = 99

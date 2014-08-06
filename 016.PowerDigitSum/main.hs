import Subseq

main :: IO ()
main = print $ sum $ map (read . (:"")) (show $ 2^1000)

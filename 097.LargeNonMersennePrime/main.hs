main :: IO ()
main = print $ drop (length s - 10) s where s = show $ 28433 * 2^(7830457 :: Integer) + (1 :: Integer)

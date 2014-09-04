import Data.Ratio

main :: IO ()
main = print $ hasCommonNumber $ 18 % 20

--isCancellingFraction :: Ratio -> Bool
--isCancellingFraction r = 

hasCommonNumber :: Ratio Int -> Bool
hasCommonNumber r = any (`elem` d) n
  where n = show $ numerator r
        d = show $ denominator r

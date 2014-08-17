import Data.Char

main :: IO ()
main = print $ sum $ filter (\x -> x == digitPowerSum 5 x) [2..360000]

digitPowerSum :: Int -> Int -> Int
digitPowerSum power num = sum $ map ((^ power) . digitToInt) $ show num

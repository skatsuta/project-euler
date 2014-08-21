import Data.Char

main :: IO ()
main = print $ product $ map (digitToInt . (catInts !!)) indices

catInts :: String
catInts = concatMap show ([1..1000000] :: [Int])

indices :: [Int]
indices = map (+(-1)) $ take 7 $ iterate (*10) 1

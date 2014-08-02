import Pythagorian

main :: IO ()
main = print $ product . head $ filter (\xs -> sum xs == 1000) $ pythagorianTriplet 500

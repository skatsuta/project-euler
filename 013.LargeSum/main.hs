main :: IO ()
main = do
  contents <- readFile "source"
  let nums = map read (lines contents) :: [Integer]
  print $ take 10 $ show $ sum nums


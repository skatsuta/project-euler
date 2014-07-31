-- 40万以下のフィボナッチ数列を取り出し、偶数を取り出し、総和を計算する
main :: IO ()
main = print $ sum $ filter even $ takeWhile (< 4000000) fibs

-- Fibonacci 数列を生成する
fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

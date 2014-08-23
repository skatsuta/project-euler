import Control.Applicative

main :: IO ()
main = print $ sum $ filter isPalindromeBoth [1..(1000000 - 1)]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

int2bin :: Int -> String
int2bin 0 = "0"
int2bin i = concatMap show . reverse . int2bin' $ i
  where int2bin' 0 = []
        int2bin' n = n `mod` 2 : int2bin' (n `div` 2)

isPalindromeBoth :: Int -> Bool
isPalindromeBoth n = all isPalindrome $ [show, int2bin] <*> [n]

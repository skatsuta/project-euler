module NumWord (oneDigitToWord) where

oneDigitToWord :: Int -> String
oneDigitToWord x
  | x < 1 || x > 9 = error "One digit Only"

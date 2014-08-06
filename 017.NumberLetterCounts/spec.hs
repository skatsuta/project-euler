import Test.Hspec
import NumWord

main :: IO ()
main = hspec $
  describe "numToWord" $
    map oneDigitToWord [1..9] `shouldBe`
        ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]


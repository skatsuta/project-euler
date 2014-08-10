import Test.Hspec
import NameScore

main :: IO ()
main = hspec $
  describe "nameScore" $ do
    it "returns 15 if it is given ABCDE" $
      nameScore "ABCDE" `shouldBe` 15

    it "returns 16 if it is given [\"ABCDE\"]" $
      zipWith (+) [1..] (map nameScore ["ABCDE"]) `shouldBe` [16]

    it "returns 45 if it is given [\"ABCDE\",\"ABCDE\"]" $
      sum (zipWith (*) [1..] (map nameScore ["ABCDE", "ABCDE"])) `shouldBe` 45

import Test.Hspec
import Prime

main :: IO ()
main = hspec $ do
  describe "Prime.factors" $ do
    it "returns an empty list when a number is less than 2" $
      factors [2] 1 `shouldBe` []

    it "returns [2] when 2 is factored" $
      factors [2, 3] 2 `shouldBe` [2]

    it "returns [3] when 3 is factored" $
      factors [2, 3, 5] 3 `shouldBe` [3]

    it "returns [2, 5] when 10 is factored" $
      factors [2..9] 10 `shouldBe` [2, 5]

  describe "Prime.primeFactors" $ do
    it "returns an empty list when a given number is less than 2" $
      primeFactors 1 `shouldBe` []

    it "returns [2] when 2 is given" $
      primeFactors 2 `shouldBe` [2]

    it "returns [2, 5] when 10 is given" $
      primeFactors 10 `shouldBe` [2, 5]

    it "returns [2, 2, 5] when 20 is given" $
      primeFactors 20 `shouldBe` [2, 2, 5]

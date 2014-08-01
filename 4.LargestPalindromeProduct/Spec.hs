import Test.Hspec
import Palindrome

main :: IO ()
main = hspec $ do
  describe "comb" $ do
    it "returns the combinations from 2 to 4" $
      comb 2 4 `shouldBe` [(2, 2), (2, 3), (2, 4), (3, 3), (3, 4), (4, 4)]

    it "returns the combinations from 10 to 11" $
      comb 10 11 `shouldBe` [(10, 10), (10, 11), (11, 11)]

  describe "pairProd" $ do
    it "returns the product of the pair between 2 and 4" $
      pairProd (comb 2 4) `shouldBe` [4, 6, 8, 9, 12, 16]

    it "returns the product of the pair 10 and 11" $
      pairProd (comb 10 11) `shouldBe` [100, 110, 121]

  describe "filterPalindrome" $ --do
    it "returns palindromes of a int list" $
      filterPalindrome (pairProd (comb 10 11)) `shouldBe` [121]

  describe "findLargestPalindrome" $
    it "returns the largest ralindrome made from the product of two numbers" $
      findLargestPalindrome 10 99 `shouldBe` 9009

  describe "findLargestPalindrome" $
    it "returns the largest ralindrome made from the product of two numbers" $
      findLargestPalindrome 100 999 `shouldBe` 888888

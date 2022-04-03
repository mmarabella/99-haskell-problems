import Data.List

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome x = (head x == last x) && (isPalindrome . init . tail) x


r = isPalindrome "racecar"
r2 = isPalindrome [1,2,3,2,1]
r3 = isPalindrome [1,2,3,3,2,1]
r4 = isPalindrome "abcdbba"

main :: IO ()
main = do
    print r
    print r2
    print r3
    print r4
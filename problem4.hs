import Data.List

myLength :: [a] -> Int
myLength = foldr (\x y -> y + 1) 0

myLength' :: [a] -> Int
myLength' [] = 0
myLength' (x:xs) = myLength' xs + 1

r = myLength [1, 2, 3, 4, 5, 6]
r2 = myLength []
r' = myLength' [1, 2, 3, 4, 5, 6]
r2' = myLength' []

main :: IO ()
main = do
    print r
    print r2
    print r'
    print r2'

import Data.List

myReverse :: [a] -> [a]
myReverse x = helper x []
    where
        helper [] rev = rev
        helper (x:xs) rev = helper xs (x : rev)

myReverse' :: [a] -> [a]
myReverse' [] = []
myReverse' (x:xs) = myReverse' xs ++ [x]

myReverse'' :: [a] -> [a]
myReverse'' = foldl (\x y -> y : x) []

myReverse''' :: [a] -> [a]
myReverse''' = foldl (flip (:)) []


r = myReverse [1, 2, 3, 4]
r' = myReverse' [1, 2, 3, 4]
r'' = myReverse'' [1, 2, 3, 4]
r''' = myReverse''' [1, 2, 3, 4]

main :: IO ()
main = do
    print r
    print r'
    print r''
    print r'''
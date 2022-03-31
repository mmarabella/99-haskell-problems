import Data.List

myButLast :: [a] -> a
myButLast (x:[y]) = x
myButLast (x:xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' = head . reverse . init

myButLast'' :: [a] -> a
myButLast'' = last . init

r = myButLast [1, 2, 3, 4]
r' = myButLast' [1, 2, 3, 4]
r'' = myButLast'' [1, 2, 3, 4]

main :: IO ()
main = do
    print r
    print r'
    print r''
import Data.List

elementAt :: Int -> [a] -> a
elementAt 1 xs = head xs
elementAt n (x:xs) = elementAt (n - 1) xs

elementAt' :: Int -> [a] -> a
elementAt' n xs = last (take n xs)

r = elementAt 3 "Haskell"
r' = elementAt' 3 "Haskell"

main :: IO ()
main = do
    print r
    print r'
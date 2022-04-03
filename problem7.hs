import Data.List

data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (Elem x) = [x]
myFlatten (List l) = foldr (\x y -> myFlatten x ++ y ) [] l


r :: [Integer]
r = myFlatten (Elem 5)
r2 = myFlatten (List [Elem 3, Elem 8, List [Elem 2], Elem 10, List [Elem 4, List []]])

main :: IO ()
main = do
    print r
    print r2

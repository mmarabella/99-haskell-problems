import Data.List
import Data.Maybe

myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs

r = myLast [1,2,3]


myLast' :: [a] -> Maybe a
myLast' [] = Nothing
myLast' [x] = Just x
myLast' (x:xs) = myLast' xs

-- r = myLast' ([] :: [Integer])

main = print r
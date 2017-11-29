import Data.List
import System.IO

myTuple = ("Aniket", 20)

name = ["Aniket", "Sankalp", "Pankaj"]
surname = ["Pandey", "Sharma", "Kumar"]

fullName = zip name surname

-- Functions, Recursions
factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n-1)

-- Even easier way for recursion
factorIal n = product [1..n]

-- Some boolean functions
isOdd :: Int -> Bool

isOdd n
	| n `mod` 2 == 0 = False
	| otherwise = True

-- Some more cool recursions
times4 :: Int -> Int
times4 x = x * 4

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

-- Sring Conditions
areStringsEqual :: String -> String -> Bool
areStringsEqual x y = x == y

areListEqual :: [Char] -> [Char] -> Bool
areListEqual (x:xs) (y:ys) = x == y && areListEqual xs ys
areListEqual _ _ = False

-- If statements
doubleEvenNums x = if (x `mod` 2 /= 0) then x else x * 2


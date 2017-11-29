-- Comment
{-
Multiline Comment
-}

import Data.List
import System.IO

-- Int
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integers (Unbounded unlike Int)

-- Float, Double (Upto 11 points)
bigFloat = 3.999999999999999 + 0.1 :: Float

-- Bool, chars, tuples
appleT = True

-- Math Functions
sumOfNums = sum [1..1000]

-- Prefix functions
modx = mod 5 4
modX2 = 5 `mod` 4

-- Parantheses
negNum = 5 + (-4)

-- Logical Operators
trueandFalse = True && False
notTure = not(True)

-- Lists
primes = [2,3,5,7,11]
morePrime = primes ++ [13]

-- List Constructors
favNums = 2 : 3 : 4 : 5: []

multiLists = [[2,3,4,5],[3,4,5]]
multiLists2 = 2 : morePrime 

-- Length of a List
lengthList = length multiLists

-- Reverse a List
revList = reverse morePrime

isListEmpty = null morePrime

firstPrime = head morePrime
lastPrime = last morePrime

butLastPrime = init morePrime
first3prime = take 3 morePrime
removedPrime = drop 3 morePrime

-- Check for existence
is7InList = 7 `elem` morePrime

maxPrime = maximum morePrime
minPrime = minimum morePrime

zeroTo10 = [0..10]
evenList = [2,4..20]

-- Infinite List !!
infiList = [1,2..]

repeat2 = take 10 (repeat 2)

-- List multiply
listMultiply = [x*2 | x <- morePrime]

-- Awesome list filters
divisibleBy9and13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

sortedList = sort [1,4..50]

-- Sum of List elements
sumOfLists = zipWith (+) [2,3,4,5,6][535,2,5,3,4]

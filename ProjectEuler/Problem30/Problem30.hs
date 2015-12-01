import Data.List

listOfDigits :: Int -> [Int]
listOfDigits x 
	| (x<10) = [x]
	| (x>=10) = (listOfDigits $ (x - (x `mod` 10)) `quot` 10) ++ (listOfDigits $ x `mod` 10)

mapToPower :: [Int] -> Int -> [Int]
mapToPower nums p = map ((flip toPower) p) nums

toPower :: Int -> Int -> Int
toPower x p = foldr (*) 1 $ replicate p x

sumDigitsToPower :: Int -> Int -> Int
sumDigitsToPower x p = sum $ (flip mapToPower) p $ listOfDigits x

findNums :: Int -> Int -> [Int]
findNums limit p = filter (\ a -> a == (sumDigitsToPower a p)) [2..limit]



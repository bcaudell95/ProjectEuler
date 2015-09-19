diag1 w = [i*i | i <- [1..w], odd i]

diag2 w = listAdd (tail (diag1 w)) (diag2Offset w)
diag2Offset w 
   | w > 3 = -2 : [i-2 | i <- diag2Offset (w-2)]
   | otherwise = [-2]
   
diag3 w = listAdd (tail (diag1 w)) (diag3Offset w)
diag3Offset w 
   | w > 3 = -4 : [i-4 | i <- diag3Offset (w-2)]
   | otherwise = [-4]

diag4 w = listAdd (tail (diag1 w)) (diag4Offset w)
diag4Offset w 
   | w > 3 = -6 : [i-6 | i <- diag4Offset (w-2)]
   | otherwise = [-6]
   
diagSum w = sum ((diag1 w) ++ (diag2 w) ++ (diag3 w) ++ (diag4 w))
   
listAdd (x:xs) (y:ys) = (x+y) : listAdd xs ys
listAdd [] [] = []
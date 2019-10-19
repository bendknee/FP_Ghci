merge xxs@(x:xs) yys@(y:ys) | x == y = x : merge xs ys 
                            | x < y  = x : merge xs yys 
                            | x > y    = y : merge xxs ys

mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort (take (floor(length xs) / 2) xs)) (mergeSort (drop (floor (length xs) / 2) xs))
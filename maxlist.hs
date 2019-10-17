my_max x y | x > y = x
		| otherwise = y
 
maxList [] = 0
maxList (x:xs) = my_max x (maxList xs)

fold_maxList xs = foldr my_max 0 xs
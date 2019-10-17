merge [] ys = ys
merge xs [] = xs
merge xs ys = [z | x <- xs, y <- ys case z of x > y -> x
	      otherwise -> y] 
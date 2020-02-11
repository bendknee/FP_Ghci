no1 xs = map (+1) xs
no2 xs ys = map (\x -> map (\y -> x+y) ys) xs
no3 xs = map (+3) (filter (> 3) xs)
no4 xs = map (fu) xs where fu (x,y) = (x+3, y)
-- no5 xs = filter (x + y < 5) (map (fun) xs) 

lc1 xs = [x + 3 | x <- xs]
lc2 xs = [x | x <- xs, x > 7]
lc3 xs ys = [(x,y) | x <- xs, y <- ys]
lc4 xys = [(x,y) | xy <- xys]
misteri xs ys = concat (map (\x -> map (\y -> (x,y)) ys) xs)

-- that (\y -> (x,y)) is actually a lambda function
-- that (\x -> map (\y -> (x,y)) is also a lambda function
-- this is working because the inner map acts as the function body
-- the function body accepts \x as parameter and pass it to the map
-- the outer map goes first, but it has to wait inner map to finish first
-- this is why the final result will be xs set crossed (product) with ys set
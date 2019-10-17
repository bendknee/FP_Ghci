fpb x 0 = x
fpb x y = fpb y (x `mod` y)

kpk x y = x * y / (fpb x y)

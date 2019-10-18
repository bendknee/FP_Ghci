data Expr = C Float 
			| Expr :+ Expr
			| Expr :- Expr
			| Expr :* Expr
			| Expr :/ Expr
			| V String
			| Let String Expr Expr
	deriving Show

subst :: String -> Expr -> Expr -> Expr
subst v0 e0 (V v1)	= if (v0 == v1) then e0 else (V v1)
subst _ _ (C c)		= (C c)
subst v0 e0 (e1 :+ e2) = subst v0 e0 e1 :+ subst v0 e0 e2
subst v0 e0 (e1 :- e2) = subst v0 e0 e1 :- subst v0 e0 e2
subst v0 e0 (e1 :* e2) = subst v0 e0 e1 :* subst v0 e0 e2
subst v0 e0 (e1 :/ e2) = subst v0 e0 e1 :/ subst v0 e0 e2
subst v0 e0 (Let v1 e1 e2) = Let v1 e1 (subst v0 e0 e2)

-- evaluate :: Expr -> Float
-- evaluate (C x) = x
-- evaluate (e1 :+ e2) = evaluate e1 + evaluate e2
-- evaluate (e1 :- e2) = evaluate e1 - evaluate e2
-- evaluate (e1 :* e2) = evaluate e1 * evaluate e2
-- evaluate (e1 :/ e2) = evaluate e1 / evaluate e2
-- evaluate (Let v e0 e1) = evaluate (subst v e0 e1)
-- evaluate (V _) = 0.0

-- eval_const exp (C x) = x
-- 		| otherwise = 0.0

-- eval_rec (exp `op` exp) = 

evaluate :: Expr -> Float
evaluate exp = foldr 0.0 eval_rec exp
	where eval_rec (e1 :+ e2) = eval_rec e1 :+ eval_rec e2

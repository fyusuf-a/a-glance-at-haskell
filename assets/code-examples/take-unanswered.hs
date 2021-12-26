whoAmI :: Int -> [a] -> [a]
whoAmI n [] = []
whoAmI 0 l = []
whoAmI n (x:xs) = x:whoAmI (n - 1) xs

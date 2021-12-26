take :: Int -> [a] -> [a]
take n [] = []
take 0 l = []
take n (x:xs) = x:take (n - 1) xs

sort [] = []
sort (p:xs) = sort lesser ++ p:sort greater
    where lesser = [x | x <- xs, x < p]
          greater = [x | x <- xs, x >= p]

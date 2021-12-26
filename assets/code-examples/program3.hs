whoAmI :: [Char] -> [Char]
whoAmI [] = []
whoAmI (c:str) = c:'f':whoAmI str

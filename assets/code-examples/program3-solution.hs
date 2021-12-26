orcish :: [Char] -> [Char]
orcish [] = []
orcish (c:str) = c:'f':orcish str

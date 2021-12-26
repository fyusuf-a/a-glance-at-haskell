e :: c -> d
e = undefined 

f :: a -> [a]
f = undefined

h :: [a] -> (a -> b) -> [b]
h = undefined

-- headache :: ???
headache = h (f e)

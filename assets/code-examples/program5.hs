whoAmI :: (a -> a) -> (a -> a)
whoAmI f x = f (f (f x))

enthusiastically :: (a -> a) -> (a -> a)
enthusiastically f x = f (f (f x))

very :: (a -> a) -> (a -> a)
very = enthusiastically

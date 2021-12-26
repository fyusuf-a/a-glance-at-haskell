natConstructor :: Int -> [Int]
natConstructor x = x:natConstructor (x+1)

nat :: [Int]
nat = natConstructor 0

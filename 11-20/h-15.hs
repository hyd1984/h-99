repli lst n = foldr (\x acc-> (replicate n x)++acc) [] lst

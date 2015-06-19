coprime n1 n2 = if (gcd n1 n2) == 1 then True else False
totient 1 = 1
totient n = foldl (\acc x -> if x == True then acc+1 else acc) 0 $ map (\x ->coprime x n) [1..(n-1)]

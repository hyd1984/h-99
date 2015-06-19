isPrime n = all (/=0) $ map (n `mod`) $ takeWhile (\x->x*x<=n) [2..]

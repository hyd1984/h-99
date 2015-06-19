isPrime n = all (/=0) $ map (n `mod`) $ takeWhile (\x->x*x<=n) [2..]
primesR beg end = filter (>beg) $ filter isPrime [2..end]

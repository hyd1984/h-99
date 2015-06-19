isPrime n = all (/=0) $ map (n `mod`) $ takeWhile (\x->x*x<=n) [2..]
goldbach n = head [(n1,n2)|n1 <-filter isPrime [2..n],n2<-filter isPrime [2..n],(n1+n2)==n]
goldbach_list beg end = map goldbach $ filter ((==0).(`mod` 2)) [beg..end]

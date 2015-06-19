isPrime n = all (/=0) $ map (n `mod`) $ takeWhile (\x->x*x<=n) [2..]
primeDivisor n = filter (\x -> isPrime x && n `mod` x ==0) $ takeWhile (\x->x*x<n) [2..]
takepowerlist elem n = init $ until (\l -> n `mod` (product l) /=0) (\l-> elem:l) [elem]
prime_factors_mult n= reverse $ foldl (\l x ->(x,length (takepowerlist x n)):l) [] $ primeDivisor n

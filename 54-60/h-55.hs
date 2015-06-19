data Tree a= Empty| Branch a (Tree a) (Tree a) deriving (Show,Eq)
cbalTree 0 =[Empty]
cbalTree n = let (q,r)= divMod (n-1) 2
                in [Branch 'x' left right|i<-[q..q+r]
		       ,left<-cbalTree i,right<-cbalTree (n-i-1)]

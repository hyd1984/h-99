import Control.Monad
and' x y 
   | x==True,y==True =True
   | otherwise=False
or' x y 
   | x==False,y==False = False
   | otherwise =True
table fn = mapM_ putStrLn [(show a) ++" "++ (show b)++" "++" "++(show $ fn a b)| a<-[True,False],b<-[True,False]]

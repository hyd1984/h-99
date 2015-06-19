import Data.List
import System.Random
rnd_permu [] = return []
rnd_permu (x:xs) = do
         n<-randomRIO(0,length xs)
	 lst <-rnd_permu xs
	 return $ let (lsta,lstb) =splitAt n lst
	          in lsta++(x:lstb)

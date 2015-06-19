import System.Random
import Data.List
diff_select n end = do
  gen<-getStdGen
  return (take n ( nub  (randomRs (1,end) gen)))

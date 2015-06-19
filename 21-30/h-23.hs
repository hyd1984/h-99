import System.Random
rnd_select lst n = do
    gen <-getStdGen
    return  $ take n [lst!! x | x<-(randomRs (0,(length lst) -1) gen)]

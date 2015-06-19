combinations 1 lst=[[e]| e<-lst]
combinations n (x:xs) 
           | n < (length (x:xs)) = [[x]++string|string<-combinations (n-1) xs] ++ (combinations n xs)
	   | otherwise = [(x:xs)]

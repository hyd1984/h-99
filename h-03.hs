elementAt:: [a] ->Int->a
elementAt xs 1 = head xs
elementAt (x:xs) n = elementAt xs (n-1)
elementAt [] _= error "Cannot be empty"
elementAt _ 0 = error "Cannot be zero"

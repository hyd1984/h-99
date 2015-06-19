insertAt elem lst n = (take (n-1) lst) ++ (elem:(drop n lst))

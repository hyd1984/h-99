dropEvery [] n = []
dropEvery lst n = (take (n-1) lst)++ (dropEvery (drop n lst) n)

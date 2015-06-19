removeAt n lst= (lst !!(n-1),(take (n-1) lst)++(drop n lst))

rotate lst n
  | n>0 = (drop n lst)++ (take n lst)
  | n<0 = (drop remain lst)++(take remain lst)
  where remain= (length lst)+n

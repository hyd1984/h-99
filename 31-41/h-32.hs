gcd' n1 n2 = if (n2 `mod` n1) == 0 then n1 else gcd' (n2 `mod` n1) n1

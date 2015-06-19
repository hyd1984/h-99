data Tree a= Empty| Branch a (Tree a) (Tree a) deriving (Show,Eq)
addTree e (Branch n l r)
   | e < n&& l == Empty = (Branch n (Branch e Empty Empty) r)
   | e < n = (Branch n (addTree e l) r)
   | e > n && r == Empty = (Branch n l (Branch e Empty Empty))
   | e> n = (Branch n l (addTree e r))
   | e == n = (Branch n l r)

construct l = foldl (\acc x -> addTree x acc) (Branch (head l) Empty Empty) (tail l)

mirror (Branch _ Empty Empty)= Branch 'x' Empty Empty
mirror (Branch _ l Empty) = Branch 'x' Empty (mirror l)
mirror (Branch _ Empty r) = Branch 'x'  (mirror r) Empty
mirror (Branch _ l r) = Branch 'x' (mirror r) (mirror l)
symmetric (Branch _ Empty Empty) = True
symmetric (Branch _ Empty _) = False
symmetric (Branch _ _ Empty) = False
symmetric (Branch _ l r) = (mirror l) == (mirror $ mirror r)

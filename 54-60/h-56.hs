data Tree a= Empty| Branch a (Tree a) (Tree a) deriving (Show,Eq)
mirror (Branch _ Empty Empty)= Branch 'x' Empty Empty
mirror (Branch _ l Empty) = Branch 'x' Empty (mirror l)
mirror (Branch _ Empty r) = Branch 'x'  (mirror r) Empty
mirror (Branch _ l r) = Branch 'x' (mirror r) (mirror l)
symmetric (Branch _ Empty Empty) = True
symmetric (Branch _ Empty _) = False
symmetric (Branch _ _ Empty) = False
symmetric (Branch _ l r) = (mirror l) == (mirror $ mirror r)

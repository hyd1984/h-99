import Data.List
lsort = sortBy (\a b->(length a) `compare` (length b))

import Data.List
encode list = foldr (\x acc-> ((length x),(head x)):acc) [] $ group list

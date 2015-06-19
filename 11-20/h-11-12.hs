import Data.List
data Encode=Single Char|Multiple Int Char deriving(Show)
encode list = foldr (\x acc-> ((length x),(head x)):acc) [] $ group list
encodeModified = map (\x -> if (fst x)==1 then (Single (snd x)) else (Multiple (fst x) (snd x))) .encode
decodeModified = foldr (\x acc -> case x of
                                            Single c ->(replicate 1 c)++acc
					    Multiple n c -> (replicate n c)++acc) []

import Data.List
compress list= reverse . foldl (\acc x -> (head x):acc) [] $  group list
